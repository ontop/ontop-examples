import java.io.FileWriter
import java.util.TimeZone
import java.util.concurrent.TimeUnit

import org.apache.spark.sql._
import org.apache.spark.sql.types._
import queries.utils.Utility

object ActivePowerTripScala {

  def main(args: Array[String]): Unit = {

    TimeZone.setDefault(TimeZone.getTimeZone("UTC"))

//    var startLoad:Long = 0
//    var endLoad:Long = 0
//    var startRun:Long = 0
//    var endRun:Long = 0

    val sparkSession = SparkSession.builder.appName(args(3))
      .master("local")
      .config("spark.eventLog.enabled", true)
      .config("spark.eventLog.dir", args(2))
      .getOrCreate

    sparkSession.conf.set("spark.ui.enabled", true)
    sparkSession.sparkContext.setLogLevel("WARN")

    //SQLContext sqlContext = new SQLContext(sc);
    val customSchema = new StructType(Array[StructField](StructField("datetime", DataTypes.TimestampType, nullable = false, Metadata.empty),
      StructField("activepower", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("averageinterducttemperature", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("averageexhausttemperature", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("turbinewashmodeselected", DataTypes.IntegerType, nullable = true, Metadata.empty),
      StructField("mainflame", DataTypes.IntegerType, nullable = true, Metadata.empty),
      StructField("maxrotorspeed", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("turbinetripactive", DataTypes.IntegerType, nullable = true, Metadata.empty),
      StructField("turbineinservice", DataTypes.IntegerType, nullable = true, Metadata.empty)))

//    startLoad = java.lang.System.currentTimeMillis()

    var df = sparkSession.read.option("header", "true").schema(customSchema).parquet(args(0) + args(1))

//    endLoad = java.lang.System.currentTimeMillis()
//    startRun = java.lang.System.currentTimeMillis()

    df.createOrReplaceTempView("tb_sensor_unified")

    df = sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL")
    df.createOrReplaceTempView("C0_AP_1")

    //**************** Active Power Above 1.5 *******************//
    var df_apa = sparkSession.sql("SELECT dFrom, dTo " +
      "FROM (" +
      "SELECT datetime as dFrom, " +
      "LEAD(datetime, 1) OVER W AS dTo, " +
      "activepower AS currAp, " +
      "LEAD(activepower, 1) OVER W AS nextAp " +
      "FROM C0_AP_1" + ") F " +
      "WHERE currAp > 1.5 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)")
    //AND dTo - dFrom <= expr("interval 1 day")
    df_apa = df_apa.filter(df_apa.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_apa.col("dTo")))

    df_apa = Utility.coalesceWithoutKey(sparkSession, df_apa, "dFrom", "dTo")

    df_apa = df_apa.filter(df_apa.col("dTo").geq(df_apa.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS"))))
      .select(df_apa.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom"), df_apa.col("dTo"))

    df_apa = df_apa.select(df_apa.col("dFrom").plus(functions.expr("INTERVAL 1 MINUTE")).as("dFrom"), df_apa.col("dTo").plus(functions.expr("INTERVAL 1 MINUTE 3 SECONDS")).as("dTo"))

    df_apa.createOrReplaceTempView("DIAMOND_AP_1")

    //**************** Active Power Below 0.15 *******************//
    var df_apb = sparkSession.sql("SELECT dFrom, dTo  " +
      "FROM (" +
      "SELECT datetime as dFrom, " +
      "LEAD(datetime, 1) OVER W AS dTo, " +
      "activepower AS currAp, " +
      "LEAD(activepower, 1) OVER W AS nextAp " +
      "FROM C0_AP_1" + ") F " +
      "WHERE currAp < 0.15 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)")
    //AND dTo - dFrom <= expr("interval 1 day")
    df_apb = df_apb.filter(df_apb.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_apb.col("dTo")))

    df_apb = Utility.coalesceWithoutKey(sparkSession, df_apb, "dFrom", "dTo")

    df_apb = df_apb.filter(df_apb.col("dTo").geq(df_apb.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS"))))
      .select(df_apb.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS")).as("dFrom"), df_apb.col("dTo"))

    df_apb.createOrReplaceTempView("AP_2")

    //**************** Active Power Trip Join *******************//
    val dfJoin = sparkSession.sql("SELECT\n" +
      "CASE \n" +
      "WHEN DIAMOND_AP_1.dFrom > AP_2.dFrom AND AP_2.dTo > DIAMOND_AP_1.dFrom THEN DIAMOND_AP_1.dFrom\n" +
      "WHEN AP_2.dFrom > DIAMOND_AP_1.dFrom AND DIAMOND_AP_1.dTo > AP_2.dFrom THEN AP_2.dFrom\n" +
      "WHEN DIAMOND_AP_1.dFrom = AP_2.dFrom THEN DIAMOND_AP_1.dFrom\n" + "END AS dFrom,\n" + "CASE \n" +
      "WHEN DIAMOND_AP_1.dTo < AP_2.dTo AND DIAMOND_AP_1.dTo > AP_2.dFrom THEN DIAMOND_AP_1.dTo\n" +
      "WHEN AP_2.dTo < DIAMOND_AP_1.dTo AND AP_2.dTo > DIAMOND_AP_1.dFrom THEN AP_2.dTo\n" +
      "WHEN DIAMOND_AP_1.dTo = AP_2.dTo THEN DIAMOND_AP_1.dTo\n" + "END AS dTo\n" +
      "FROM DIAMOND_AP_1, AP_2\n" +
      "WHERE\n" +
      "((DIAMOND_AP_1.dFrom > AP_2.dFrom AND AP_2.dTo > DIAMOND_AP_1.dFrom) OR (AP_2.dFrom > DIAMOND_AP_1.dFrom AND DIAMOND_AP_1.dTo > AP_2.dFrom) OR (DIAMOND_AP_1.dFrom = AP_2.dFrom)) AND\n" +
      "((DIAMOND_AP_1.dTo < AP_2.dTo AND DIAMOND_AP_1.dTo > AP_2.dFrom) OR (AP_2.dTo < DIAMOND_AP_1.dTo AND AP_2.dTo > DIAMOND_AP_1.dFrom) OR (DIAMOND_AP_1.dTo = AP_2.dTo))")

    dfJoin.show(10000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun)+"; "+TimeUnit.MILLISECONDS.toSeconds(endLoad - startLoad)+"; "+TimeUnit.MILLISECONDS.toSeconds(endRun - startRun))
//    fw.close()

    sparkSession.close()

  }
}
