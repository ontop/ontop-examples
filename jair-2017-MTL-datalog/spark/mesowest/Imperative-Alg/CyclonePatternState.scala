import java.io.FileWriter
import java.util.TimeZone
import java.util.concurrent.TimeUnit

import org.apache.spark.sql.types._
import org.apache.spark.sql.{functions, _}
import queries.utils.{CoalesceAlg, Utility}

object CyclonePatternState {

  def main(args: Array[String]): Unit = {

//    var startLoad:Long = 0
//    var endLoad:Long = 0
//    var startRun:Long = 0
//    var endRun:Long = 0

    TimeZone.setDefault(TimeZone.getTimeZone("UTC"))

    val sparkSession = SparkSession.builder.appName(args(3))
      .master("local[48]")
      .config("spark.eventLog.enabled", true)
      .config("spark.eventLog.dir", args(2))
      .getOrCreate

    sparkSession.conf.set("spark.ui.enabled", true)
    sparkSession.sparkContext.setLogLevel("WARN")

    //SQLContext sqlContext = new SQLContext(sc);
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

//    startLoad = java.lang.System.currentTimeMillis()

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

//    endLoad = java.lang.System.currentTimeMillis()
//    startRun = java.lang.System.currentTimeMillis()

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

    df_nw = Utility.coalesceWithPartition(sparkSession, df_nw, "SID", "dFrom", "dto")

    df_nw.createOrReplaceTempView("C4_NW")

    var df_loc_of_nw = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_NW, tb_metadata WHERE SID = stid ORDER BY (state, dFrom)")

    df_loc_of_nw = Utility.coalesceWithPartition(sparkSession, df_loc_of_nw.repartition(df_loc_of_nw.col("state")).sortWithinPartitions("state", "dFrom"), "state", "dFrom", "dto")

    df_loc_of_nw.createOrReplaceTempView("LOCATIONOFNW")

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

    df_ew = Utility.coalesceWithPartition(sparkSession, df_ew, "SID", "dFrom", "dto")

    df_ew.createOrReplaceTempView("C4_EW")

    var df_loc_of_ew = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_EW, tb_metadata WHERE SID = stid ORDER BY (state, dFrom)")

    df_loc_of_ew = Utility.coalesceWithPartition(sparkSession, df_loc_of_ew.repartition(df_loc_of_ew.col("state")).sortWithinPartitions("state", "dFrom"), "state", "dFrom", "dto")

    df_loc_of_ew.createOrReplaceTempView("LOCATIONOFEW")

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

    df_sw = Utility.coalesceWithPartition(sparkSession, df_sw, "SID", "dFrom", "dto")

    df_sw.createOrReplaceTempView("C4_SW")

    var df_loc_of_sw = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_SW, tb_metadata WHERE SID = stid ORDER BY (state, dFrom)")

    df_loc_of_sw = Utility.coalesceWithPartition(sparkSession, df_loc_of_sw.repartition(df_loc_of_sw.col("state")).sortWithinPartitions("state", "dFrom"), "state", "dFrom", "dto")

    df_loc_of_sw.createOrReplaceTempView("LOCATIONOFSW")

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

    df_ww = Utility.coalesceWithPartition(sparkSession, df_ww, "SID", "dFrom", "dto")

    df_ww.createOrReplaceTempView("C4_WW")

    var df_loc_of_ww = sparkSession.sql("SELECT state, dFrom, dTo FROM C4_WW, tb_metadata WHERE SID = stid ORDER BY (state, dFrom)")

    df_loc_of_ww = Utility.coalesceWithPartition(sparkSession, df_loc_of_ww.repartition(df_loc_of_ww.col("state")).sortWithinPartitions("state", "dFrom"), "state", "dFrom", "dto")

    df_loc_of_ww.createOrReplaceTempView("LOCATIONOFWW")

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
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun)+"; "+TimeUnit.MILLISECONDS.toSeconds(endLoad - startLoad)+"; "+TimeUnit.MILLISECONDS.toSeconds(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }
}
