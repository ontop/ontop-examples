import java.io.FileWriter
import java.util.TimeZone

import org.apache.spark.sql._
import org.apache.spark.sql.types._

object HurricaneAffectedState {

  def main(args: Array[String]): Unit = {

    var startLoad:Long = 0
    var endLoad:Long = 0
    var startRun:Long = 0
    var endRun:Long = 0

    TimeZone.setDefault(TimeZone.getTimeZone("UTC"))
    val sparkSession = SparkSession.builder.appName(args(3))
      .master("local")
      .config("spark.eventLog.enabled", true)
      .config("spark.eventLog.dir", args(2))
      .getOrCreate

    sparkSession.conf.set("spark.ui.enabled", true)

    val customSchema = new StructType(Array[StructField](
      StructField("station_id", DataTypes.StringType, nullable = false, Metadata.empty),
      StructField("date_time", DataTypes.TimestampType, nullable = false, Metadata.empty),
      StructField("air_temp_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("relative_humidity_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("wind_speed_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("wind_gust_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("wind_direction_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("pressure_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("pressure_tendency_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("weather_cond_code_set_1", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("visibility_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("cloud_layer_1_code_set_1", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("air_temp_high_6_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("air_temp_low_6_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("air_temp_high_24_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("air_temp_low_24_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("precip_accum_one_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("precip_accum_three_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("precip_accum_six_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("precip_accum_24_hour_set_1", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("snow_depth_set_1", DataTypes.FloatType, nullable = true, Metadata.empty)
    ))

    //startLoad = java.lang.System.currentTimeMillis()

    var df_hfw = sparkSession.read.option("header", "true").schema(customSchema).parquet(args(0) + args(1))

    val customSchema2 = new StructType(Array[StructField](
      StructField("status", DataTypes.StringType, nullable = false, Metadata.empty),
      StructField("mnet_id", DataTypes.IntegerType, nullable = false, Metadata.empty),
      StructField("startdate", DataTypes.TimestampType, nullable = true, Metadata.empty),
      StructField("enddate", DataTypes.TimestampType, nullable = true, Metadata.empty),
      StructField("elevation", DataTypes.IntegerType, nullable = true, Metadata.empty),
      StructField("name", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("shortname", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("sgid", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("nwsfirezone", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("stid", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("longitude", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("county", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("cwa", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("state", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("nwszone", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("latitude", DataTypes.FloatType, nullable = true, Metadata.empty),
      StructField("timezone", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("gacc", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("country", DataTypes.StringType, nullable = true, Metadata.empty),
      StructField("id", DataTypes.IntegerType, nullable = true, Metadata.empty)
    ))

    var df_md_1 = sparkSession.read.option("header", "true").schema(customSchema2).parquet(args(0) + "tb_metadata.parquet")

   // endLoad = java.lang.System.currentTimeMillis()
   // startRun = java.lang.System.currentTimeMillis()

    df_hfw.createOrReplaceTempView("tb_weatherdata")
    df_md_1.createOrReplaceTempView("tb_metadata")

    //****************** HURRICANE *******************//

    df_hfw = sparkSession.sql("SELECT SID, dFrom, dTo \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "lag(wind_speed_set_1, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS prevWSpeed, \n" +
      "wind_speed_set_1 AS wSpeed, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE wSpeed >= 118 AND rnm > 1")

    df_hfw = df_hfw.filter(df_hfw.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_hfw.col("dTo")))

    df_hfw.createOrReplaceTempView("HFW")

    df_hfw = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts, SID \n" +
      "FROM HFW \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts, SID \n" +
      "FROM HFW ");

    df_hfw.createOrReplaceTempView("C1_HFW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("HFW"))

    df_hfw = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts, \n" +
      "SID \n" +
      "FROM C1_HFW \n" +
      "WINDOW " +
      "W1 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_hfw.createOrReplaceTempView("C2_HFW");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_HFW"))

    df_hfw = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID \n" +
      "FROM C2_HFW \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_hfw.createOrReplaceTempView("C3_HFW");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_HFW"))

    df_hfw = sparkSession.sql("SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM C3_HFW")

    df_hfw = df_hfw.select(df_hfw.col("SID"), df_hfw.col("prevTs").plus(functions.expr("INTERVAL 1 HOUR")).as("dFrom"), df_hfw.col("ts").as("dTo"))
      .filter(df_hfw.col("Crt_Total_ts").equalTo(0))
      .filter(df_hfw.col("ts").geq(df_hfw.col("prevTs").plus(functions.expr("INTERVAL 1 HOUR"))))

    df_hfw.createOrReplaceTempView("HURRICANE")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_HFW"))


    //****************** LOCATION OF HURRICANE *******************//

    var df_md = sparkSession.sql("SELECT state, dFrom, dTo FROM tb_metadata, HURRICANE WHERE stid = SID")

    df_md.createOrReplaceTempView("L1_HURR")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("tb_metadata"))

    df_md = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts, state \n" +
      "FROM L1_HURR \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts, state \n" +
      "FROM L1_HURR ");

    df_md.createOrReplaceTempView("L2_HURR")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_HURR"))

    df_md = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts, \n" +
      "state \n" +
      "FROM L2_HURR \n" +
      "WINDOW " +
      "W1 AS (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_md.createOrReplaceTempView("L3_HURR");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_HURR"))

    df_md = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state \n" +
      "FROM L3_HURR \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_md.createOrReplaceTempView("L4_HURR");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_HURR"))

    df_md = sparkSession.sql("SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM L4_HURR")

    df_md = df_md.select(df_md.col("state"),df_md.col("prevTs").as("dFrom"), df_md.col("ts").as("dTo"))
      .filter(df_md.col("Crt_Total_ts").equalTo(0))

    df_md.show(100000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }
}
