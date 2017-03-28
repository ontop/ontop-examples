import java.io.FileWriter
import java.util.TimeZone
import java.util.concurrent.TimeUnit

import org.apache.spark.sql._
import org.apache.spark.sql.types._
import queries.utils.Utility

object NormalStartScala {

  def main(args: Array[String]): Unit = {

//    var startLoad:Long = 0
//    var endLoad:Long = 0
//    var startRun:Long = 0
//    var endRun:Long = 0

    TimeZone.setDefault(TimeZone.getTimeZone("UTC"))

    val sparkSession = SparkSession.builder.appName(args(3))
      .master("local")
      .config("spark.eventLog.enabled", true)
      .config("spark.eventLog.dir", args(2))
      .getOrCreate

    sparkSession.conf.set("spark.ui.enabled", true)
    sparkSession.sparkContext.setLogLevel("WARN")

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

    var df_c0_rs = sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE maxrotorspeed IS NOT NULL")
    df_c0_rs.createOrReplaceTempView("C0_RS")

    //**************** DIAMOND_CU4800_1 *******************//

    var df_diamond_cu4800_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs <= 4400 AND dTo IS NOT NULL")

    df_diamond_cu4800_1 = df_diamond_cu4800_1.filter(df_diamond_cu4800_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cu4800_1.col("dTo")))

    df_diamond_cu4800_1 = Utility.coalesceWithoutKey(sparkSession,df_diamond_cu4800_1,"dFrom", "dTo")

    df_diamond_cu4800_1 = df_diamond_cu4800_1.filter(df_diamond_cu4800_1.col("dTo").geq(df_diamond_cu4800_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_diamond_cu4800_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cu4800_1.col("dTo"))

    df_diamond_cu4800_1 = df_diamond_cu4800_1.select(df_diamond_cu4800_1.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom"), df_diamond_cu4800_1.col("dTo").plus(functions.expr("INTERVAL 2 MINUTES 10 SECONDS")).as("dTo"))

    df_diamond_cu4800_1.createOrReplaceTempView("DIAMOND_CU4800_1")

    //**************** BOX_CU4800_2 *******************//

    var df_box_cu4800_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs >= 4800 AND dTo IS NOT NULL")

    df_box_cu4800_2 = df_box_cu4800_2.filter(df_box_cu4800_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_box_cu4800_2.col("dTo")))

    df_box_cu4800_2 = Utility.coalesceWithoutKey(sparkSession,df_box_cu4800_2,"dFrom", "dTo")

    df_box_cu4800_2 = df_box_cu4800_2.filter(df_box_cu4800_2.col("dTo").geq(df_box_cu4800_2.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS"))))
      .select(df_box_cu4800_2.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom"), df_box_cu4800_2.col("dTo"))

    df_box_cu4800_2.createOrReplaceTempView("BOX_CU4800_2")

    //**************** DIAMOND_CU4800 *******************//

    var df_diamond_cu4800 = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU4800_1.dFrom > BOX_CU4800_2.dFrom AND BOX_CU4800_2.dTo > DIAMOND_CU4800_1.dFrom THEN DIAMOND_CU4800_1.dFrom \n" +
      "WHEN BOX_CU4800_2.dFrom > DIAMOND_CU4800_1.dFrom AND DIAMOND_CU4800_1.dTo > BOX_CU4800_2.dFrom THEN BOX_CU4800_2.dFrom \n" +
      "WHEN DIAMOND_CU4800_1.dFrom = BOX_CU4800_2.dFrom THEN DIAMOND_CU4800_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU4800_1.dTo < BOX_CU4800_2.dTo AND DIAMOND_CU4800_1.dTo > BOX_CU4800_2.dFrom THEN DIAMOND_CU4800_1.dTo \n" +
      "WHEN BOX_CU4800_2.dTo < DIAMOND_CU4800_1.dTo AND BOX_CU4800_2.dTo > DIAMOND_CU4800_1.dFrom THEN BOX_CU4800_2.dTo \n" +
      "WHEN DIAMOND_CU4800_1.dTo = BOX_CU4800_2.dTo THEN DIAMOND_CU4800_1.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CU4800_1, BOX_CU4800_2 \n" +
      "WHERE \n" +
      "((DIAMOND_CU4800_1.dFrom > BOX_CU4800_2.dFrom AND BOX_CU4800_2.dTo > DIAMOND_CU4800_1.dFrom) OR (BOX_CU4800_2.dFrom > DIAMOND_CU4800_1.dFrom AND DIAMOND_CU4800_1.dTo > BOX_CU4800_2.dFrom) OR (DIAMOND_CU4800_1.dFrom = BOX_CU4800_2.dFrom)) AND \n" +
      "((DIAMOND_CU4800_1.dTo < BOX_CU4800_2.dTo AND DIAMOND_CU4800_1.dTo > BOX_CU4800_2.dFrom) OR (BOX_CU4800_2.dTo < DIAMOND_CU4800_1.dTo AND BOX_CU4800_2.dTo > DIAMOND_CU4800_1.dFrom) OR (DIAMOND_CU4800_1.dTo = BOX_CU4800_2.dTo))")

    df_diamond_cu4800 = df_diamond_cu4800.select(df_diamond_cu4800.col("dFrom").minus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cu4800.col("dTo"))

    df_diamond_cu4800.createOrReplaceTempView("DIAMOND_CU4800")

    var flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CU4800_1"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_CU4800_2"))

    //**************** DIAMOND_CU4400_1 *******************//

    var df_diamond_cu4400_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs <= 1500 AND dTo IS NOT NULL")

    df_diamond_cu4400_1 = df_diamond_cu4400_1.filter(df_diamond_cu4400_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cu4400_1.col("dTo")))

    df_diamond_cu4400_1 = Utility.coalesceWithoutKey(sparkSession,df_diamond_cu4400_1,"dFrom", "dTo")

    df_diamond_cu4400_1 = df_diamond_cu4400_1.filter(df_diamond_cu4400_1.col("dTo").geq(df_diamond_cu4400_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_diamond_cu4400_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cu4400_1.col("dTo"))

    df_diamond_cu4400_1 = df_diamond_cu4400_1.select(df_diamond_cu4400_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cu4400_1.col("dTo").plus(functions.expr("INTERVAL 7 MINUTES")).as("dTo"))

    df_diamond_cu4400_1.createOrReplaceTempView("DIAMOND_CU4400_1")

    //**************** BOX_CU4400_2 *******************//

    var df_box_cu4400_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs >= 4400 AND dTo IS NOT NULL")

    df_box_cu4400_2 = df_box_cu4400_2.filter(df_box_cu4400_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_box_cu4400_2.col("dTo")))

    df_box_cu4400_2 = Utility.coalesceWithoutKey(sparkSession,df_box_cu4400_2,"dFrom", "dTo")

    df_box_cu4400_2 = df_box_cu4400_2.filter(df_box_cu4400_2.col("dTo").geq(df_box_cu4400_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_box_cu4400_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_box_cu4400_2.col("dTo"))

    df_box_cu4400_2.createOrReplaceTempView("BOX_CU4400_2")

    //**************** CU4400 *******************//

    var df_cu4400 = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU4400_1.dFrom > BOX_CU4400_2.dFrom AND BOX_CU4400_2.dTo > DIAMOND_CU4400_1.dFrom THEN DIAMOND_CU4400_1.dFrom \n" +
      "WHEN BOX_CU4400_2.dFrom > DIAMOND_CU4400_1.dFrom AND DIAMOND_CU4400_1.dTo > BOX_CU4400_2.dFrom THEN BOX_CU4400_2.dFrom \n" +
      "WHEN DIAMOND_CU4400_1.dFrom = BOX_CU4400_2.dFrom THEN DIAMOND_CU4400_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU4400_1.dTo < BOX_CU4400_2.dTo AND DIAMOND_CU4400_1.dTo > BOX_CU4400_2.dFrom THEN DIAMOND_CU4400_1.dTo \n" +
      "WHEN BOX_CU4400_2.dTo < DIAMOND_CU4400_1.dTo AND BOX_CU4400_2.dTo > DIAMOND_CU4400_1.dFrom THEN BOX_CU4400_2.dTo \n" +
      "WHEN DIAMOND_CU4400_1.dTo = BOX_CU4400_2.dTo THEN DIAMOND_CU4400_1.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CU4400_1, BOX_CU4400_2 \n" +
      "WHERE \n" +
      "((DIAMOND_CU4400_1.dFrom > BOX_CU4400_2.dFrom AND BOX_CU4400_2.dTo > DIAMOND_CU4400_1.dFrom) OR (BOX_CU4400_2.dFrom > DIAMOND_CU4400_1.dFrom AND DIAMOND_CU4400_1.dTo > BOX_CU4400_2.dFrom) OR (DIAMOND_CU4400_1.dFrom = BOX_CU4400_2.dFrom)) AND \n" +
      "((DIAMOND_CU4400_1.dTo < BOX_CU4400_2.dTo AND DIAMOND_CU4400_1.dTo > BOX_CU4400_2.dFrom) OR (BOX_CU4400_2.dTo < DIAMOND_CU4400_1.dTo AND BOX_CU4400_2.dTo > DIAMOND_CU4400_1.dFrom) OR (DIAMOND_CU4400_1.dTo = BOX_CU4400_2.dTo))")

    df_cu4400.createOrReplaceTempView("CU4400")

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CU4400_1"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_CU4400_2"))

    //**************** DIAMOND_D *******************//

    var df_diamond_d = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU4800.dFrom > CU4400.dFrom AND CU4400.dTo > DIAMOND_CU4800.dFrom THEN DIAMOND_CU4800.dFrom \n" +
      "WHEN CU4400.dFrom > DIAMOND_CU4800.dFrom AND DIAMOND_CU4800.dTo > CU4400.dFrom THEN CU4400.dFrom \n" +
      "WHEN DIAMOND_CU4800.dFrom = CU4400.dFrom THEN DIAMOND_CU4800.dFrom \n" +
      "END AS dFrom,\nCASE \nWHEN DIAMOND_CU4800.dTo < CU4400.dTo AND DIAMOND_CU4800.dTo > CU4400.dFrom THEN DIAMOND_CU4800.dTo \n" +
      "WHEN CU4400.dTo < DIAMOND_CU4800.dTo AND CU4400.dTo > DIAMOND_CU4800.dFrom THEN CU4400.dTo \n" +
      "WHEN DIAMOND_CU4800.dTo = CU4400.dTo THEN DIAMOND_CU4800.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CU4800, CU4400 \n" +
      "WHERE \n" +
      "((DIAMOND_CU4800.dFrom > CU4400.dFrom AND CU4400.dTo > DIAMOND_CU4800.dFrom) OR (CU4400.dFrom > DIAMOND_CU4800.dFrom AND DIAMOND_CU4800.dTo > CU4400.dFrom) OR (DIAMOND_CU4800.dFrom = CU4400.dFrom)) AND \n" +
      "((DIAMOND_CU4800.dTo < CU4400.dTo AND DIAMOND_CU4800.dTo > CU4400.dFrom) OR (CU4400.dTo < DIAMOND_CU4800.dTo AND CU4400.dTo > DIAMOND_CU4800.dFrom) OR (DIAMOND_CU4800.dTo = CU4400.dTo))")

    df_diamond_d = df_diamond_d.select(df_diamond_d.col("dFrom").minus(functions.expr("INTERVAL 5 MINUTES")).as("dFrom"), df_diamond_d.col("dTo"))

    df_diamond_d.createOrReplaceTempView("DIAMOND_D")

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CU4800"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("CU4400"))

    //**************** DIAMOND_CU1000_1 *******************//

    var df_diamond_cu1000_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs <= 1000 AND dTo IS NOT NULL")

    df_diamond_cu1000_1 = df_diamond_cu1000_1.filter(df_diamond_cu1000_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cu1000_1.col("dTo")))

    df_diamond_cu1000_1 = Utility.coalesceWithoutKey(sparkSession,df_diamond_cu1000_1,"dFrom", "dTo")

    df_diamond_cu1000_1 = df_diamond_cu1000_1.filter(df_diamond_cu1000_1.col("dTo").geq(df_diamond_cu1000_1.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS"))))
      .select(df_diamond_cu1000_1.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS")).as("dFrom"), df_diamond_cu1000_1.col("dTo"))

    df_diamond_cu1000_1 = df_diamond_cu1000_1.select(df_diamond_cu1000_1.col("dFrom"), df_diamond_cu1000_1.col("dTo").plus(functions.expr("INTERVAL 2 MINUTES")).as("dTo"))

    df_diamond_cu1000_1.createOrReplaceTempView("DIAMOND_CU1000_1")

    //**************** BOX_CU1000_2 *******************//

    var df_box_cu1000_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs >= 1260 AND dTo IS NOT NULL")

    df_box_cu1000_2 = df_box_cu1000_2.filter(df_box_cu1000_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_box_cu1000_2.col("dTo")))

    df_box_cu1000_2 = Utility.coalesceWithoutKey(sparkSession,df_box_cu1000_2,"dFrom", "dTo")

    df_box_cu1000_2 = df_box_cu1000_2.filter(df_box_cu1000_2.col("dTo").geq(df_box_cu1000_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_box_cu1000_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_box_cu1000_2.col("dTo"))

    df_box_cu1000_2.createOrReplaceTempView("BOX_CU1000_2")

    //**************** DIAMOND E *******************//

    var df_diamond_e = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU1000_1.dFrom > BOX_CU1000_2.dFrom AND BOX_CU1000_2.dTo > DIAMOND_CU1000_1.dFrom THEN DIAMOND_CU1000_1.dFrom \n" +
      "WHEN BOX_CU1000_2.dFrom > DIAMOND_CU1000_1.dFrom AND DIAMOND_CU1000_1.dTo > BOX_CU1000_2.dFrom THEN BOX_CU1000_2.dFrom \n" +
      "WHEN DIAMOND_CU1000_1.dFrom = BOX_CU1000_2.dFrom THEN DIAMOND_CU1000_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CU1000_1.dTo < BOX_CU1000_2.dTo AND DIAMOND_CU1000_1.dTo > BOX_CU1000_2.dFrom THEN DIAMOND_CU1000_1.dTo \n" +
      "WHEN BOX_CU1000_2.dTo < DIAMOND_CU1000_1.dTo AND BOX_CU1000_2.dTo > DIAMOND_CU1000_1.dFrom THEN BOX_CU1000_2.dTo \n" +
      "WHEN DIAMOND_CU1000_1.dTo = BOX_CU1000_2.dTo THEN DIAMOND_CU1000_1.dTo\nEND AS dTo\nFROM DIAMOND_CU1000_1, BOX_CU1000_2 \n" +
      "WHERE \n" +
      "((DIAMOND_CU1000_1.dFrom > BOX_CU1000_2.dFrom AND BOX_CU1000_2.dTo > DIAMOND_CU1000_1.dFrom) OR (BOX_CU1000_2.dFrom > DIAMOND_CU1000_1.dFrom AND DIAMOND_CU1000_1.dTo > BOX_CU1000_2.dFrom) OR (DIAMOND_CU1000_1.dFrom = BOX_CU1000_2.dFrom)) AND \n" +
      "((DIAMOND_CU1000_1.dTo < BOX_CU1000_2.dTo AND DIAMOND_CU1000_1.dTo > BOX_CU1000_2.dFrom) OR (BOX_CU1000_2.dTo < DIAMOND_CU1000_1.dTo AND BOX_CU1000_2.dTo > DIAMOND_CU1000_1.dFrom) OR (DIAMOND_CU1000_1.dTo = BOX_CU1000_2.dTo))")

    df_diamond_e = df_diamond_e.select((df_diamond_e.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom")), df_diamond_e.col("dTo").plus(functions.expr("INTERVAL 10 MINUTES 10 SECONDS")).as("dTo"))

    df_diamond_e.createOrReplaceTempView("DIAMOND_E")

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CU1000_1"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_CU1000_2"))

    //**************** MF *******************//

    var df_mf =sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE mainflame IS NOT NULL")

    df_mf.createOrReplaceTempView("C0_MF")

    df_mf = sparkSession.sql("SELECT dFrom, dTo, currMf, nextMf \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "mainflame AS currMf, \n" +
      "LEAD(mainflame, 1) OVER (ORDER BY  datetime) AS nextMf \n" +
      "FROM C0_MF) F \n" +
      "WHERE currMF >= 1 AND dTo IS NOT NULL ")

    df_mf = df_mf.filter(df_mf.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_mf.col("dTo")))

    df_mf = Utility.coalesceWithoutKey(sparkSession,df_mf,"dFrom", "dTo")

    df_mf = df_mf.filter(df_mf.col("dTo").geq(df_mf.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS"))))
      .select(df_mf.col("dFrom").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom"), df_mf.col("dTo"))

    df_mf.createOrReplaceTempView("MF")

    //**************** PIO *******************//

    var df_pio = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_E.dFrom > MF.dFrom AND MF.dTo > DIAMOND_E.dFrom THEN DIAMOND_E.dFrom \n" +
      "WHEN MF.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > MF.dFrom THEN MF.dFrom \n" +
      "WHEN DIAMOND_E.dFrom = MF.dFrom THEN DIAMOND_E.dFrom \n" +
      "END AS dFrom,\n" +
      "CASE \n" +
      "WHEN DIAMOND_E.dTo < MF.dTo AND DIAMOND_E.dTo > MF.dFrom THEN DIAMOND_E.dTo \n" +
      "WHEN MF.dTo < DIAMOND_E.dTo AND MF.dTo > DIAMOND_E.dFrom THEN MF.dTo \n" +
      "WHEN DIAMOND_E.dTo = MF.dTo THEN DIAMOND_E.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_E, MF \n" +
      "WHERE \n" +
      "((DIAMOND_E.dFrom > MF.dFrom AND MF.dTo > DIAMOND_E.dFrom) OR (MF.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > MF.dFrom) OR (DIAMOND_E.dFrom = MF.dFrom)) AND\n " +
      "((DIAMOND_E.dTo < MF.dTo AND DIAMOND_E.dTo > MF.dFrom) OR (MF.dTo < DIAMOND_E.dTo AND MF.dTo > DIAMOND_E.dFrom) OR (DIAMOND_E.dTo = MF.dTo))")

    df_pio.createOrReplaceTempView("PIO")

    //**************** DIAMOND_C *******************//

    var df_diamond_c = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_D.dFrom > PIO.dFrom AND PIO.dTo > DIAMOND_D.dFrom THEN DIAMOND_D.dFrom \n" +
      "WHEN PIO.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > PIO.dFrom THEN PIO.dFrom \n" +
      "WHEN DIAMOND_D.dFrom = PIO.dFrom THEN DIAMOND_D.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_D.dTo < PIO.dTo AND DIAMOND_D.dTo > PIO.dFrom THEN DIAMOND_D.dTo \n" +
      "WHEN PIO.dTo < DIAMOND_D.dTo AND PIO.dTo > DIAMOND_D.dFrom THEN PIO.dTo \n" +
      "WHEN DIAMOND_D.dTo = PIO.dTo THEN DIAMOND_D.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_D, PIO \n" +
      "WHERE \n" +
      "((DIAMOND_D.dFrom > PIO.dFrom AND PIO.dTo > DIAMOND_D.dFrom) OR (PIO.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > PIO.dFrom) OR (DIAMOND_D.dFrom = PIO.dFrom)) AND \n" +
      "((DIAMOND_D.dTo < PIO.dTo AND DIAMOND_D.dTo > PIO.dFrom) OR (PIO.dTo < DIAMOND_D.dTo AND PIO.dTo > DIAMOND_D.dFrom) OR (DIAMOND_D.dTo = PIO.dTo))")

    df_diamond_c = df_diamond_c.select(df_diamond_c.col("dFrom").minus(functions.expr("INTERVAL 11 MINUTES")).as("dFrom"), df_diamond_c.col("dTo"))

    df_diamond_c.createOrReplaceTempView("DIAMOND_C")

    //**************** DIAMOND_CD1 *******************//

    var df_diamond_cd1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs <= 200 AND dTo IS NOT NULL")

    df_diamond_cd1 = df_diamond_cd1.filter(df_diamond_cd1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cd1.col("dTo")))

    df_diamond_cd1 = Utility.coalesceWithoutKey(sparkSession,df_diamond_cd1,"dFrom", "dTo")

    df_diamond_cd1 = df_diamond_cd1.filter(df_diamond_cd1.col("dTo").geq(df_diamond_cd1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_diamond_cd1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd1.col("dTo"))

    df_diamond_cd1 = df_diamond_cd1.select(df_diamond_cd1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd1.col("dTo").plus(functions.expr("INTERVAL 150 SECONDS")).as("dTo"))

    df_diamond_cd1.createOrReplaceTempView("DIAMOND_CD1")

    //**************** BOX_CD2 *******************//

    var df_box_cd_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs >= 1260 AND dTo IS NOT NULL")

    df_box_cd_2 = df_box_cd_2.filter(df_box_cd_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_box_cd_2.col("dTo")))

    df_box_cd_2 = Utility.coalesceWithoutKey(sparkSession,df_box_cd_2,"dFrom", "dTo")

    df_box_cd_2 = df_box_cd_2.filter(df_box_cd_2.col("dTo").geq(df_box_cd_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_box_cd_2.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_box_cd_2.col("dTo"))

    df_box_cd_2.createOrReplaceTempView("BOX_CD2")

    //**************** CU1260 *******************//

    var df_cu1260 = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD1.dFrom > BOX_CD2.dFrom AND BOX_CD2.dTo > DIAMOND_CD1.dFrom THEN DIAMOND_CD1.dFrom \n" +
      "WHEN BOX_CD2.dFrom > DIAMOND_CD1.dFrom AND DIAMOND_CD1.dTo > BOX_CD2.dFrom THEN BOX_CD2.dFrom \n" +
      "WHEN DIAMOND_CD1.dFrom = BOX_CD2.dFrom THEN DIAMOND_CD1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD1.dTo < BOX_CD2.dTo AND DIAMOND_CD1.dTo > BOX_CD2.dFrom THEN DIAMOND_CD1.dTo \n" +
      "WHEN BOX_CD2.dTo < DIAMOND_CD1.dTo AND BOX_CD2.dTo > DIAMOND_CD1.dFrom THEN BOX_CD2.dTo \n" +
      "WHEN DIAMOND_CD1.dTo = BOX_CD2.dTo THEN DIAMOND_CD1.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CD1, BOX_CD2 \n" +
      "WHERE \n" +
      "((DIAMOND_CD1.dFrom > BOX_CD2.dFrom AND BOX_CD2.dTo > DIAMOND_CD1.dFrom) OR (BOX_CD2.dFrom > DIAMOND_CD1.dFrom AND DIAMOND_CD1.dTo > BOX_CD2.dFrom) OR (DIAMOND_CD1.dFrom = BOX_CD2.dFrom)) AND \n" +
      "((DIAMOND_CD1.dTo < BOX_CD2.dTo AND DIAMOND_CD1.dTo > BOX_CD2.dFrom) OR (BOX_CD2.dTo < DIAMOND_CD1.dTo AND BOX_CD2.dTo > DIAMOND_CD1.dFrom) OR (DIAMOND_CD1.dTo = BOX_CD2.dTo))")

    df_cu1260.createOrReplaceTempView("CU1260")

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CD1"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_CD2"))

    //**************** DIAMOND_B *******************//

    var df_diamond_b = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_C.dFrom > CU1260.dFrom AND CU1260.dTo > DIAMOND_C.dFrom THEN DIAMOND_C.dFrom \n" +
      "WHEN CU1260.dFrom > DIAMOND_C.dFrom AND DIAMOND_C.dTo > CU1260.dFrom THEN CU1260.dFrom \n" +
      "WHEN DIAMOND_C.dFrom = CU1260.dFrom THEN DIAMOND_C.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_C.dTo < CU1260.dTo AND DIAMOND_C.dTo > CU1260.dFrom THEN DIAMOND_C.dTo \n" +
      "WHEN CU1260.dTo < DIAMOND_C.dTo AND CU1260.dTo > DIAMOND_C.dFrom THEN CU1260.dTo \n" +
      "WHEN DIAMOND_C.dTo = CU1260.dTo THEN DIAMOND_C.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_C, CU1260 \n" +
      "WHERE \n" +
      "((DIAMOND_C.dFrom > CU1260.dFrom AND CU1260.dTo > DIAMOND_C.dFrom) OR (CU1260.dFrom > DIAMOND_C.dFrom AND DIAMOND_C.dTo > CU1260.dFrom) OR (DIAMOND_C.dFrom = CU1260.dFrom)) AND \n" +
      "((DIAMOND_C.dTo < CU1260.dTo AND DIAMOND_C.dTo > CU1260.dFrom) OR (CU1260.dTo < DIAMOND_C.dTo AND CU1260.dTo > DIAMOND_C.dFrom) OR (DIAMOND_C.dTo = CU1260.dTo))")

    df_diamond_b = df_diamond_b.select(df_diamond_b.col("dFrom").minus(functions.expr("INTERVAL 15 SECONDS")).as("dFrom"), df_diamond_b.col("dTo"))

    df_diamond_b.createOrReplaceTempView("DIAMOND_B")

    //**************** DIAMOND_CD1_1 *******************//

    var df_diamond_cd1_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs <= 60 AND dTo IS NOT NULL")

    df_diamond_cd1_1 = df_diamond_cd1_1.filter(df_diamond_cd1_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cd1_1.col("dTo")))

    df_diamond_cd1_1 = Utility.coalesceWithoutKey(sparkSession,df_diamond_cd1_1,"dFrom", "dTo")

    df_diamond_cd1_1 = df_diamond_cd1_1.filter(df_diamond_cd1_1.col("dTo").geq(df_diamond_cd1_1.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS"))))
      .select(df_diamond_cd1_1.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS")).as("dFrom"), df_diamond_cd1_1.col("dTo"))

    df_diamond_cd1_1 = df_diamond_cd1_1.select(df_diamond_cd1_1.col("dFrom").plus(functions.expr("INTERVAL 60 SECONDS")).as("dFrom"), df_diamond_cd1_1.col("dTo").plus(functions.expr("INTERVAL 150 SECONDS")).as("dTo"))

    df_diamond_cd1_1.createOrReplaceTempView("DIAMOND_CD1_1")

    //**************** BOX_CD2_1 *******************//

    var df_box_cd2_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n " +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "maxrotorspeed AS currRs, \n" +
      "LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs \n" +
      "FROM C0_RS) F \n" +
      "WHERE currRs >= 180 AND dTo IS NOT NULL")

    df_box_cd2_1 = df_box_cd2_1.filter(df_box_cd2_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_box_cd2_1.col("dTo")))

    df_box_cd2_1 = Utility.coalesceWithoutKey(sparkSession,df_box_cd2_1,"dFrom", "dTo")

    df_box_cd2_1 = df_box_cd2_1.filter(df_box_cd2_1.col("dTo").geq(df_box_cd2_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS"))))
      .select(df_box_cd2_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_box_cd2_1.col("dTo"))

    df_box_cd2_1.createOrReplaceTempView("BOX_CD2_1")

    //**************** CU180 *******************//

    var df_cu180 = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD1_1.dFrom > BOX_CD2_1.dFrom AND BOX_CD2_1.dTo > DIAMOND_CD1_1.dFrom THEN DIAMOND_CD1_1.dFrom \n" +
      "WHEN BOX_CD2_1.dFrom > DIAMOND_CD1_1.dFrom AND DIAMOND_CD1_1.dTo > BOX_CD2_1.dFrom THEN BOX_CD2_1.dFrom \n" +
      "WHEN DIAMOND_CD1_1.dFrom = BOX_CD2_1.dFrom THEN DIAMOND_CD1_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD1_1.dTo < BOX_CD2_1.dTo AND DIAMOND_CD1_1.dTo > BOX_CD2_1.dFrom THEN DIAMOND_CD1_1.dTo \n" +
      "WHEN BOX_CD2_1.dTo < DIAMOND_CD1_1.dTo AND BOX_CD2_1.dTo > DIAMOND_CD1_1.dFrom THEN BOX_CD2_1.dTo \n" +
      "WHEN DIAMOND_CD1_1.dTo = BOX_CD2_1.dTo THEN DIAMOND_CD1_1.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CD1_1, BOX_CD2_1\nWHERE\n((DIAMOND_CD1_1.dFrom > BOX_CD2_1.dFrom AND BOX_CD2_1.dTo > DIAMOND_CD1_1.dFrom) OR (BOX_CD2_1.dFrom > DIAMOND_CD1_1.dFrom AND DIAMOND_CD1_1.dTo > BOX_CD2_1.dFrom) OR (DIAMOND_CD1_1.dFrom = BOX_CD2_1.dFrom)) AND\n " +
      "((DIAMOND_CD1_1.dTo < BOX_CD2_1.dTo AND DIAMOND_CD1_1.dTo > BOX_CD2_1.dFrom) OR (BOX_CD2_1.dTo < DIAMOND_CD1_1.dTo AND BOX_CD2_1.dTo > DIAMOND_CD1_1.dFrom) OR (DIAMOND_CD1_1.dTo = BOX_CD2_1.dTo))")

    df_cu180.createOrReplaceTempView("CU180")

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_CD1_1"))

    flag = scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_CD2_1"))

    //**************** Normal Start *******************//

    var df_NormalStart = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_B.dFrom > CU180.dFrom AND CU180.dTo > DIAMOND_B.dFrom THEN DIAMOND_B.dFrom\nWHEN CU180.dFrom > DIAMOND_B.dFrom AND DIAMOND_B.dTo > CU180.dFrom THEN CU180.dFrom \n" +
      "WHEN DIAMOND_B.dFrom = CU180.dFrom THEN DIAMOND_B.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_B.dTo < CU180.dTo AND DIAMOND_B.dTo > CU180.dFrom THEN DIAMOND_B.dTo \n" +
      "WHEN CU180.dTo < DIAMOND_B.dTo AND CU180.dTo > DIAMOND_B.dFrom THEN CU180.dTo \n" +
      "WHEN DIAMOND_B.dTo = CU180.dTo THEN DIAMOND_B.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_B, CU180 \n" +
      "WHERE \n " +
      "((DIAMOND_B.dFrom > CU180.dFrom AND CU180.dTo > DIAMOND_B.dFrom) OR (CU180.dFrom > DIAMOND_B.dFrom AND DIAMOND_B.dTo > CU180.dFrom) OR (DIAMOND_B.dFrom = CU180.dFrom)) AND \n" +
      "((DIAMOND_B.dTo < CU180.dTo AND DIAMOND_B.dTo > CU180.dFrom) OR (CU180.dTo < DIAMOND_B.dTo AND CU180.dTo > DIAMOND_B.dFrom) OR (DIAMOND_B.dTo = CU180.dTo))")

    df_NormalStart.show(10000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun)+"; "+TimeUnit.MILLISECONDS.toSeconds(endLoad - startLoad)+"; "+TimeUnit.MILLISECONDS.toSeconds(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }

}
