import java.io.FileWriter
import java.util.TimeZone

import org.apache.spark.sql._
import org.apache.spark.sql.types._

object HeatAffectedCounty {

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

    startLoad = java.lang.System.currentTimeMillis()

    var df = sparkSession.read.option("header", "true").schema(customSchema).parquet(args(0) + args(1))

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

    endLoad = java.lang.System.currentTimeMillis()
    startRun = java.lang.System.currentTimeMillis()

    df.createOrReplaceTempView("tb_weatherdata")
    df_md_1.createOrReplaceTempView("tb_metadata")

    //****************** BOX_ABOVE24 *******************//

    var df_above_24 = sparkSession.sql("SELECT SID, dFrom, dTo \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY  date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "lag(air_temp_set_1, 1) OVER (PARTITION BY station_id ORDER BY  date_time) AS prevTemp, \n" +
      "air_temp_set_1 AS currTemp, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE currTemp >= 24 AND rnm > 1 ")

    df_above_24 = df_above_24.filter(df_above_24.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_above_24.col("dTo")))

    df_above_24.createOrReplaceTempView("ABOVE24")

    df_above_24 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts, SID \n" +
      "FROM ABOVE24 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts, SID \n" +
      "FROM ABOVE24 ");

    df_above_24.createOrReplaceTempView("C1_ABOVE24")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("ABOVE24"))

    df_above_24 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts, \n" +
      "SID \n" +
      "FROM C1_ABOVE24 \n" +
      "WINDOW " +
      "W1 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_above_24.createOrReplaceTempView("C2_ABOVE24");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_ABOVE24"))

    df_above_24 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID \n" +
      "FROM C2_ABOVE24 \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_above_24.createOrReplaceTempView("C3_ABOVE24");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_ABOVE24"))

    df_above_24 = sparkSession.sql("SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM C3_ABOVE24")

    df_above_24 = df_above_24.select(df_above_24.col("SID"), df_above_24.col("prevTs").plus(functions.expr("INTERVAL 24 HOURS")).as("daFrom"), df_above_24.col("ts").as("daTo"))
      .filter(df_above_24.col("Crt_Total_ts").equalTo(0))
      .filter(df_above_24.col("ts").geq(df_above_24.col("prevTs").plus(functions.expr("INTERVAL 24 HOURS"))))

    df_above_24.createOrReplaceTempView("BOX_ABOVE24")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_ABOVE24"))

    //****************** DIAMOND_ABOVE41 *******************//

    var df_above_41 = sparkSession.sql("SELECT SID, dFrom, dTo, prevTemp, currTemp \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY  date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "lag(air_temp_set_1, 1) OVER (PARTITION BY station_id ORDER BY  date_time) AS prevTemp, \n" +
      "air_temp_set_1 AS currTemp, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE currTemp >= 41 AND rnm > 1")

    df_above_41 = df_above_41.filter(df_above_41.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_above_41.col("dTo")))

    df_above_41.createOrReplaceTempView("ABOVE41")

    df_above_41 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts, SID \n" +
      "FROM ABOVE41 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts, SID \n" +
      "FROM ABOVE41 ");

    df_above_41.createOrReplaceTempView("C1_ABOVE41")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("ABOVE41"))

    df_above_41 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts, \n" +
      "SID \n" +
      "FROM C1_ABOVE41 \n" +
      "WINDOW " +
      "W1 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_above_41.createOrReplaceTempView("C2_ABOVE41");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_ABOVE41"))

    df_above_41 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID \n" +
      "FROM C2_ABOVE41 \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_above_41.createOrReplaceTempView("C3_ABOVE41");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_ABOVE41"))

    df_above_41 = sparkSession.sql("SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM C3_ABOVE41")

    df_above_41 = df_above_41.select(df_above_41.col("SID"), df_above_41.col("prevTs").as("dFrom"), df_above_41.col("ts").as("dTo"))
      .filter(df_above_41.col("Crt_Total_ts").equalTo(0))

    df_above_41 = df_above_41.select(df_above_41.col("SID"), df_above_41.col("dFrom").as("shFrom"), df_above_41.col("dTo").plus(functions.expr("INTERVAL 24 HOURS")).as("shTo"))

    df_above_41.createOrReplaceTempView("DIAMOND_ABOVE41")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_ABOVE41"))

    //****************** EXCESSIVE_HEAT *******************//

    var df_excessive_heat = sparkSession.sql("SELECT BOX_ABOVE24.SID AS SID, \n" +
      "CASE \n" +
      "WHEN BOX_ABOVE24.daFrom > DIAMOND_ABOVE41.shFrom AND DIAMOND_ABOVE41.shTo > BOX_ABOVE24.daFrom THEN BOX_ABOVE24.daFrom  \n" +
      "WHEN DIAMOND_ABOVE41.shFrom > BOX_ABOVE24.daFrom AND BOX_ABOVE24.daTo > DIAMOND_ABOVE41.shFrom THEN DIAMOND_ABOVE41.shFrom \n" +
      "WHEN BOX_ABOVE24.daFrom = DIAMOND_ABOVE41.shFrom THEN BOX_ABOVE24.daFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN BOX_ABOVE24.daTo < DIAMOND_ABOVE41.shTo AND BOX_ABOVE24.daTo > DIAMOND_ABOVE41.shFrom THEN BOX_ABOVE24.daTo \n" +
      "WHEN DIAMOND_ABOVE41.shTo < BOX_ABOVE24.daTo AND DIAMOND_ABOVE41.shTo > BOX_ABOVE24.daFrom THEN DIAMOND_ABOVE41.shTo \n" +
      "WHEN BOX_ABOVE24.daTo = DIAMOND_ABOVE41.shTo THEN BOX_ABOVE24.daTo \n" +
      "END AS dTo \n" +
      "FROM BOX_ABOVE24, DIAMOND_ABOVE41 \n" +
      "WHERE BOX_ABOVE24.SID = DIAMOND_ABOVE41.SID AND \n" +
      "((BOX_ABOVE24.daFrom > DIAMOND_ABOVE41.shFrom AND DIAMOND_ABOVE41.shTo > BOX_ABOVE24.daFrom) OR (DIAMOND_ABOVE41.shFrom > BOX_ABOVE24.daFrom AND BOX_ABOVE24.daTo > DIAMOND_ABOVE41.shFrom) OR (BOX_ABOVE24.daFrom = DIAMOND_ABOVE41.shFrom)) AND \n" +
      "((BOX_ABOVE24.daTo < DIAMOND_ABOVE41.shTo AND BOX_ABOVE24.daTo > DIAMOND_ABOVE41.shFrom) OR (DIAMOND_ABOVE41.shTo < BOX_ABOVE24.daTo AND DIAMOND_ABOVE41.shTo > BOX_ABOVE24.daFrom) OR (BOX_ABOVE24.daTo = DIAMOND_ABOVE41.shTo))")

    df_excessive_heat = df_excessive_heat.select(df_excessive_heat.col("SID"), df_excessive_heat.col("dFrom").minus(functions.expr("INTERVAL 24 HOURS")).as("dFrom"), df_excessive_heat.col("dTo"))

    df_excessive_heat.createOrReplaceTempView("EXCESSIVE_HEAT")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_ABOVE_24"))

    scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_ABOVE41"))

    //****************** LOCATION OF EXCESSIVE_HEAT *******************//


    var df_location_eh = sparkSession.sql("SELECT county, dFrom, dTo FROM tb_metadata, EXCESSIVE_HEAT WHERE stid = SID")

    df_location_eh.createOrReplaceTempView("L1_EH")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("tb_metadata"))

    scala.util.Try(sparkSession.sqlContext.dropTempTable("EXCESSIVE_HEAT"))

    df_location_eh = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts, county \n" +
      "FROM L1_EH \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts, county \n" +
      "FROM L1_EH ");

    df_location_eh.createOrReplaceTempView("L2_EH")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_EH"))

    df_location_eh = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts, \n" +
      "county \n" +
      "FROM L2_EH \n" +
      "WINDOW " +
      "W1 AS (PARTITION BY county ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (PARTITION BY county ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_location_eh.createOrReplaceTempView("L3_EH");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_EH"))

    df_location_eh = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, county \n" +
      "FROM L3_EH \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_location_eh.createOrReplaceTempView("L4_EH");

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_EH"))

    df_location_eh = sparkSession.sql("SELECT county, LAG(ts,1) OVER (PARTITION BY county ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM L4_EH")

    df_location_eh = df_location_eh.select(df_location_eh.col("county"),df_location_eh.col("prevTs").as("dFrom"), df_location_eh.col("ts").as("dTo"))
      .filter(df_location_eh.col("Crt_Total_ts").equalTo(0))

    df_location_eh.show(100000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }
}
