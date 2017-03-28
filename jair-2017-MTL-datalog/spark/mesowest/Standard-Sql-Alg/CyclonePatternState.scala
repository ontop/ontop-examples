import java.io.FileWriter
import java.util.TimeZone

import org.apache.spark.sql.{functions, _}
import org.apache.spark.sql.types._
import queries.utils.CoalesceAlg

object CyclonePatternState {

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

    //****************** METADATA *******************//

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

    //****************** LOCATIONOFNW *******************//

    var df_nw = sparkSession.sql("SELECT SID, dFrom, dTo, wd, ws, rnm \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "wind_direction_set_1 AS wd, \n" +
      "wind_speed_set_1 AS ws, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE (wd > 315 OR wd <= 45) AND ws > 0 AND rnm > 1")

    df_nw = df_nw.filter(df_nw.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_nw.col("dTo")))


    df_nw.createOrReplaceTempView("NW")

    df_nw = sparkSession.sql(CoalesceAlg.C1("NW", "SID"))

    df_nw.createOrReplaceTempView("C1_NW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("NW"))

    df_nw = sparkSession.sql(CoalesceAlg.C2("C1_NW", "SID"))

    df_nw.createOrReplaceTempView("C2_NW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_NW"))

    df_nw = sparkSession.sql(CoalesceAlg.C3("C2_NW", "SID"))

    df_nw.createOrReplaceTempView("C3_NW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_NW"))

    df_nw = sparkSession.sql(CoalesceAlg.C4_SUB("C3_NW", "SID"))

    df_nw = df_nw.select(df_nw.col("SID"), df_nw.col("prevTs").as("dFrom"), df_nw.col("ts").as("dTo"))
      .filter(df_nw.col("Crt_Total_ts").equalTo(0))

    //df_nw.show(3000000)

    df_nw = df_nw.orderBy("SID", "dFrom")

    df_nw.createOrReplaceTempView("C4_NW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_NW"))

    var df_loc_of_nw = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_NW, tb_metadata WHERE SID = stid")

    df_loc_of_nw.createOrReplaceTempView("L1_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C4_NW"))

    df_loc_of_nw = sparkSession.sql(CoalesceAlg.C1("L1_SC", "state"))

    df_loc_of_nw.createOrReplaceTempView("L2_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_SC"))

    df_loc_of_nw = sparkSession.sql(CoalesceAlg.C2("L2_SC", "state"))

    df_loc_of_nw.createOrReplaceTempView("L3_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_SC"))

    df_loc_of_nw = sparkSession.sql(CoalesceAlg.C3("L3_SC", "state"))

    df_loc_of_nw.createOrReplaceTempView("L4_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_SC"))

    df_loc_of_nw = sparkSession.sql(CoalesceAlg.C4_SUB("L4_SC", "state"))

    df_loc_of_nw = df_loc_of_nw.select(df_loc_of_nw.col("state"), df_loc_of_nw.col("prevTs").as("dFrom"), df_loc_of_nw.col("ts").as("dTo"))
      .filter(df_loc_of_nw.col("Crt_Total_ts").equalTo(0))

    df_loc_of_nw.createOrReplaceTempView("LOCATIONOFNW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L4_SC"))

    //****************** LOCATIONOFEW *******************//

    var df_ew = sparkSession.sql("SELECT SID, dFrom, dTo \n" +
      "FROM (SELECT station_id AS SID,\n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "wind_direction_set_1 AS wd, \n" +
      "wind_speed_set_1 AS ws, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE wd > 45 AND wd <= 135 AND ws > 0 AND rnm > 1 ")

    df_ew = df_ew.filter(df_ew.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_ew.col("dTo")))

    df_ew.createOrReplaceTempView("EW")

    df_ew = sparkSession.sql(CoalesceAlg.C1("EW", "SID"))

    df_ew.createOrReplaceTempView("C1_EW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("EW"))

    df_ew = sparkSession.sql(CoalesceAlg.C2("C1_EW", "SID"))

    df_ew.createOrReplaceTempView("C2_EW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_EW"))

    df_ew = sparkSession.sql(CoalesceAlg.C3("C2_EW", "SID"))

    df_ew.createOrReplaceTempView("C3_EW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_EW"))

    df_ew = sparkSession.sql(CoalesceAlg.C4_SUB("C3_EW", "SID"))

    df_ew = df_ew.select(df_ew.col("SID"), df_ew.col("prevTs").as("dFrom"), df_ew.col("ts").as("dTo"))
      .filter(df_ew.col("Crt_Total_ts").equalTo(0))

    df_ew.createOrReplaceTempView("C4_EW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_EW"))

    var df_loc_of_ew = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_EW, tb_metadata WHERE SID = stid")

    df_loc_of_ew.createOrReplaceTempView("L1_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C4_EW"))

    df_loc_of_ew = sparkSession.sql(CoalesceAlg.C1("L1_SC", "state"))

    df_loc_of_ew.createOrReplaceTempView("L2_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_SC"))

    df_loc_of_ew = sparkSession.sql(CoalesceAlg.C2("L2_SC", "state"))

    df_loc_of_ew.createOrReplaceTempView("L3_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_SC"))

    df_loc_of_ew = sparkSession.sql(CoalesceAlg.C3("L3_SC", "state"))

    df_loc_of_ew.createOrReplaceTempView("L4_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_SC"))

    df_loc_of_ew = sparkSession.sql(CoalesceAlg.C4_SUB("L4_SC", "state"))

    df_loc_of_ew = df_loc_of_ew.select(df_loc_of_ew.col("state"), df_loc_of_ew.col("prevTs").as("dFrom"), df_loc_of_ew.col("ts").as("dTo"))
      .filter(df_loc_of_ew.col("Crt_Total_ts").equalTo(0))

    df_loc_of_ew.createOrReplaceTempView("LOCATIONOFEW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L4_SC"))

    //****************** LOCATIONOFSW *******************//

    var df_sw = sparkSession.sql("SELECT SID, dFrom, dTo \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "wind_direction_set_1 AS wd, \n" +
      "wind_speed_set_1 AS ws, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE wd > 135 AND wd <= 225 AND ws > 0 AND rnm > 1")

    df_sw = df_sw.filter(df_sw.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_sw.col("dTo")))

    df_sw.createOrReplaceTempView("SW")

    df_sw = sparkSession.sql(CoalesceAlg.C1("SW", "SID"))

    df_sw.createOrReplaceTempView("C1_SW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("SW"))

    df_sw = sparkSession.sql(CoalesceAlg.C2("C1_SW", "SID"))

    df_sw.createOrReplaceTempView("C2_SW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_SW"))

    df_sw = sparkSession.sql(CoalesceAlg.C3("C2_SW", "SID"))

    df_sw.createOrReplaceTempView("C3_SW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_SW"))

    df_sw = sparkSession.sql(CoalesceAlg.C4_SUB("C3_SW", "SID"))

    df_sw = df_sw.select(df_sw.col("SID"), df_sw.col("prevTs").as("dFrom"), df_sw.col("ts").as("dTo"))
      .filter(df_sw.col("Crt_Total_ts").equalTo(0))

    df_sw.createOrReplaceTempView("C4_SW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_SW"))

    var df_loc_of_sw = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_SW, tb_metadata WHERE SID = stid")

    df_loc_of_sw.createOrReplaceTempView("L1_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C4_SW"))

    df_loc_of_sw = sparkSession.sql(CoalesceAlg.C1("L1_SC", "state"))

    df_loc_of_sw.createOrReplaceTempView("L2_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_SC"))

    df_loc_of_sw = sparkSession.sql(CoalesceAlg.C2("L2_SC", "state"))

    df_loc_of_sw.createOrReplaceTempView("L3_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_SC"))

    df_loc_of_sw = sparkSession.sql(CoalesceAlg.C3("L3_SC", "state"))

    df_loc_of_sw.createOrReplaceTempView("L4_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_SC"))

    df_loc_of_sw = sparkSession.sql(CoalesceAlg.C4_SUB("L4_SC", "state"))

    df_loc_of_sw = df_loc_of_sw.select(df_loc_of_sw.col("state"), df_loc_of_sw.col("prevTs").as("dFrom"), df_loc_of_sw.col("ts").as("dTo"))
      .filter(df_loc_of_sw.col("Crt_Total_ts").equalTo(0))

    df_loc_of_sw.createOrReplaceTempView("LOCATIONOFSW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L4_SC"))

    //****************** LOCATIONOFWW *******************//

    var df_ww = sparkSession.sql("SELECT SID, dFrom, dTo \n" +
      "FROM (SELECT station_id AS SID, \n" +
      "lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom, \n" +
      "date_time AS dTo, \n" +
      "wind_direction_set_1 AS wd, \n" +
      "wind_speed_set_1 AS ws, \n" +
      "ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm \n" +
      "FROM tb_weatherdata) AS a \n" +
      "WHERE wd > 225 AND wd <= 315 AND ws > 0 AND rnm > 1")

    df_ww = df_ww.filter(df_ww.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_ww.col("dTo")))

    df_ww.createOrReplaceTempView("WW")

    df_ww = sparkSession.sql(CoalesceAlg.C1("WW", "SID"))

    df_ww.createOrReplaceTempView("C1_WW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("WW"))

    df_ww = sparkSession.sql(CoalesceAlg.C2("C1_WW", "SID"))

    df_ww.createOrReplaceTempView("C2_WW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C1_WW"))

    df_ww = sparkSession.sql(CoalesceAlg.C3("C2_WW", "SID"))

    df_ww.createOrReplaceTempView("C3_WW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C2_WW"))

    df_ww = sparkSession.sql(CoalesceAlg.C4_SUB("C3_WW", "SID"))

    df_ww = df_ww.select(df_ww.col("SID"), df_ww.col("prevTs").as("dFrom"), df_ww.col("ts").as("dTo"))
      .filter(df_ww.col("Crt_Total_ts").equalTo(0))

    df_ww.createOrReplaceTempView("C4_WW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C3_WW"))

    var df_loc_of_ww = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_WW, tb_metadata WHERE SID = stid")

    df_loc_of_ww.createOrReplaceTempView("L1_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("C4_WW"))

    df_loc_of_ww = sparkSession.sql(CoalesceAlg.C1("L1_SC", "state"))

    df_loc_of_ww.createOrReplaceTempView("L2_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L1_SC"))

    df_loc_of_ww = sparkSession.sql(CoalesceAlg.C2("L2_SC", "state"))

    df_loc_of_ww.createOrReplaceTempView("L3_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L2_SC"))

    df_loc_of_ww = sparkSession.sql(CoalesceAlg.C3("L3_SC", "state"))

    df_loc_of_ww.createOrReplaceTempView("L4_SC")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L3_SC"))

    df_loc_of_ww = sparkSession.sql(CoalesceAlg.C4_SUB("L4_SC", "state"))

    df_loc_of_ww = df_loc_of_ww.select(df_loc_of_ww.col("state"), df_loc_of_ww.col("prevTs").as("dFrom"), df_loc_of_ww.col("ts").as("dTo"))
      .filter(df_loc_of_ww.col("Crt_Total_ts").equalTo(0))

    df_loc_of_ww.createOrReplaceTempView("LOCATIONOFWW")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("L4_SC"))

    //****************** F1 *******************//

    var df_f1 = sparkSession.sql("SELECT LOCATIONOFEW.state AS x_state_1, \n" +
      "CASE \n" +
      "WHEN LOCATIONOFEW.dFrom > LOCATIONOFWW.dFrom AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom THEN LOCATIONOFEW.dFrom \n" +
      "WHEN LOCATIONOFWW.dFrom > LOCATIONOFEW.dFrom AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom THEN LOCATIONOFWW.dFrom \n" +
      "WHEN LOCATIONOFEW.dFrom = LOCATIONOFWW.dFrom THEN LOCATIONOFEW.dFrom \n" +
      "END AS x_from_1,\n" +
      "CASE \n" +
      "WHEN LOCATIONOFEW.dTo < LOCATIONOFWW.dTo AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom THEN LOCATIONOFEW.dTo \n" +
      "WHEN LOCATIONOFWW.dTo < LOCATIONOFEW.dTo AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom THEN LOCATIONOFWW.dTo \n" +
      "WHEN LOCATIONOFEW.dTo = LOCATIONOFWW.dTo THEN LOCATIONOFEW.dTo \n" +
      "END AS x_to_1 \n" +
      "FROM LOCATIONOFEW, LOCATIONOFWW \n" +
      "WHERE LOCATIONOFEW.state = LOCATIONOFWW.state AND \n" +
      "((LOCATIONOFEW.dFrom > LOCATIONOFWW.dFrom AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom) OR (LOCATIONOFWW.dFrom > LOCATIONOFEW.dFrom AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom) OR (LOCATIONOFEW.dFrom = LOCATIONOFWW.dFrom)) AND \n" +
      "((LOCATIONOFEW.dTo < LOCATIONOFWW.dTo AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom) OR (LOCATIONOFWW.dTo < LOCATIONOFEW.dTo AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom) OR (LOCATIONOFEW.dTo = LOCATIONOFWW.dTo))")

    df_f1.createOrReplaceTempView("F1")
    scala.util.Try(sparkSession.sqlContext.dropTempTable("LOCATIONOFEW"))
    scala.util.Try(sparkSession.sqlContext.dropTempTable("LOCATIONOFWW"))

    var df_f2 = sparkSession.sql("SELECT LOCATIONOFNW.state AS x_state_2, \n" +
      "CASE \n" +
      "WHEN LOCATIONOFNW.dFrom > LOCATIONOFSW.dFrom AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom THEN LOCATIONOFNW.dFrom \n" +
      "WHEN LOCATIONOFSW.dFrom > LOCATIONOFNW.dFrom AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom THEN LOCATIONOFSW.dFrom \n" +
      "WHEN LOCATIONOFNW.dFrom = LOCATIONOFSW.dFrom THEN LOCATIONOFNW.dFrom \n" +
      "END AS x_from_2, \n" +
      "CASE \n" +
      "WHEN LOCATIONOFNW.dTo < LOCATIONOFSW.dTo AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom THEN LOCATIONOFNW.dTo \n" +
      "WHEN LOCATIONOFSW.dTo < LOCATIONOFNW.dTo AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom THEN LOCATIONOFSW.dTo \n" +
      "WHEN LOCATIONOFNW.dTo = LOCATIONOFSW.dTo THEN LOCATIONOFNW.dTo \n" +
      "END AS x_to_2 \n" +
      "FROM LOCATIONOFNW, LOCATIONOFSW \n" +
      "WHERE LOCATIONOFNW.state = LOCATIONOFSW.state AND \n" +
      "((LOCATIONOFNW.dFrom > LOCATIONOFSW.dFrom AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom) OR (LOCATIONOFSW.dFrom > LOCATIONOFNW.dFrom AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom) OR (LOCATIONOFNW.dFrom = LOCATIONOFSW.dFrom)) AND \n" +
      "((LOCATIONOFNW.dTo < LOCATIONOFSW.dTo AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom) OR (LOCATIONOFSW.dTo < LOCATIONOFNW.dTo AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom) OR (LOCATIONOFNW.dTo = LOCATIONOFSW.dTo))")

    df_f2.createOrReplaceTempView("F2")
    scala.util.Try(sparkSession.sqlContext.dropTempTable("LOCATIONOFNW"))
    scala.util.Try(sparkSession.sqlContext.dropTempTable("LOCATIONOFSW"))

    var df_join = sparkSession.sql("SELECT x_state_1 AS x_state_3, \n" +
      "CASE \n" +
      "WHEN x_from_1 > x_from_2 AND x_to_2 > x_from_1 THEN x_from_1 \n" +
      "WHEN x_from_2 > x_from_1 AND x_to_1 > x_from_2 THEN x_from_2 \n" +
      "WHEN x_from_1 = x_from_2 THEN x_from_1 \n" +
      "END AS x_from_3, \n" +
      "CASE \n" +
      "WHEN x_to_1 < x_to_2 AND x_to_1 > x_from_2 THEN x_to_1 \n" +
      "WHEN x_to_2 < x_to_1 AND x_to_2 > x_from_1 THEN x_to_2 \n" +
      "WHEN x_to_1 = x_to_2 THEN x_to_1 \n" +
      "END AS x_to_3 \n" +
      "FROM F1, F2 \n" +
      "WHERE x_state_1 = x_state_2 AND \n" +
      "((x_from_1 > x_from_2 AND x_to_2 > x_from_1) OR (x_from_2 > x_from_1 AND x_to_1 > x_from_2) OR (x_from_1 = x_from_2)) AND \n" +
      "((x_to_1 < x_to_2 AND x_to_1 > x_from_2) OR (x_to_2 < x_to_1 AND x_to_2 > x_from_1) OR (x_to_1 = x_to_2))")

    df_join.show(100000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }

}
