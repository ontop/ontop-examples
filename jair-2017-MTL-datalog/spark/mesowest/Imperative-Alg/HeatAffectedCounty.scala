import java.io.FileWriter
import java.util.TimeZone
import java.util.concurrent.TimeUnit

import org.apache.spark.sql._
import org.apache.spark.sql.types._
import queries.utils.Utility

object HeatAffectedCounty {

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

    df_above_24 = Utility.coalesceWithPartition(sparkSession, df_above_24, "SID", "dFrom", "dto")
    
    df_above_24 = df_above_24.filter(df_above_24.col("dTo").geq(df_above_24.col("dFrom").plus(functions.expr("INTERVAL 24 HOURS"))))
      .select(df_above_24.col("SID"), df_above_24.col("dFrom").plus(functions.expr("INTERVAL 24 HOURS")).as("dFrom"), df_above_24.col("dTo"))
      
    df_above_24.createOrReplaceTempView("BOX_ABOVE24")
    
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

    df_above_41 = Utility.coalesceWithPartition(sparkSession, df_above_41, "SID", "dFrom", "dto")
    
    df_above_41 = df_above_41.select(df_above_41.col("SID"), df_above_41.col("dFrom"), df_above_41.col("dTo").plus(functions.expr("INTERVAL 24 HOURS")).as("dTo"))

    df_above_41.createOrReplaceTempView("DIAMOND_ABOVE41")
    
    //****************** EXCESSIVE_HEAT *******************//

    var df_excessive_heat = sparkSession.sql("SELECT BOX_ABOVE24.SID AS SID, \n" +
      "CASE \n" +
      "WHEN BOX_ABOVE24.dFrom > DIAMOND_ABOVE41.dFrom AND DIAMOND_ABOVE41.dTo > BOX_ABOVE24.dFrom THEN BOX_ABOVE24.dFrom  \n" +
      "WHEN DIAMOND_ABOVE41.dFrom > BOX_ABOVE24.dFrom AND BOX_ABOVE24.dTo > DIAMOND_ABOVE41.dFrom THEN DIAMOND_ABOVE41.dFrom \n" +
      "WHEN BOX_ABOVE24.dFrom = DIAMOND_ABOVE41.dFrom THEN BOX_ABOVE24.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN BOX_ABOVE24.dTo < DIAMOND_ABOVE41.dTo AND BOX_ABOVE24.dTo > DIAMOND_ABOVE41.dFrom THEN BOX_ABOVE24.dTo \n" +
      "WHEN DIAMOND_ABOVE41.dTo < BOX_ABOVE24.dTo AND DIAMOND_ABOVE41.dTo > BOX_ABOVE24.dFrom THEN DIAMOND_ABOVE41.dTo \n" +
      "WHEN BOX_ABOVE24.dTo = DIAMOND_ABOVE41.dTo THEN BOX_ABOVE24.dTo \n" +
      "END AS dTo \n" +
      "FROM BOX_ABOVE24, DIAMOND_ABOVE41 \n" +
      "WHERE BOX_ABOVE24.SID = DIAMOND_ABOVE41.SID AND \n" +
      "((BOX_ABOVE24.dFrom > DIAMOND_ABOVE41.dFrom AND DIAMOND_ABOVE41.dTo > BOX_ABOVE24.dFrom) OR (DIAMOND_ABOVE41.dFrom > BOX_ABOVE24.dFrom AND BOX_ABOVE24.dTo > DIAMOND_ABOVE41.dFrom) OR (BOX_ABOVE24.dFrom = DIAMOND_ABOVE41.dFrom)) AND \n" +
      "((BOX_ABOVE24.dTo < DIAMOND_ABOVE41.dTo AND BOX_ABOVE24.dTo > DIAMOND_ABOVE41.dFrom) OR (DIAMOND_ABOVE41.dTo < BOX_ABOVE24.dTo AND DIAMOND_ABOVE41.dTo > BOX_ABOVE24.dFrom) OR (BOX_ABOVE24.dTo = DIAMOND_ABOVE41.dTo))")

    df_excessive_heat = df_excessive_heat.select(df_excessive_heat.col("SID"), df_excessive_heat.col("dFrom").minus(functions.expr("INTERVAL 24 HOURS")).as("dFrom"), df_excessive_heat.col("dTo"))

    df_excessive_heat.createOrReplaceTempView("EXCESSIVE_HEAT")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("BOX_ABOVE_24"))

    scala.util.Try(sparkSession.sqlContext.dropTempTable("DIAMOND_ABOVE41"))

    //****************** LOCATION OF EXCESSIVE_HEAT *******************//

    var df_location_eh = sparkSession.sql("SELECT county, dFrom, dTo FROM tb_metadata, EXCESSIVE_HEAT WHERE stid = SID ORDER BY (county, dFrom)")

    df_location_eh = Utility.coalesceWithPartition(sparkSession, df_location_eh.repartition(df_location_eh.col("county")).sortWithinPartitions("state", "dFrom"), "county", "dFrom", "dto")

    scala.util.Try(sparkSession.sqlContext.dropTempTable("tb_metadata"))

    scala.util.Try(sparkSession.sqlContext.dropTempTable("EXCESSIVE_HEAT"))

    df_location_eh.show(100000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun)+"; "+TimeUnit.MILLISECONDS.toSeconds(endLoad - startLoad)+"; "+TimeUnit.MILLISECONDS.toSeconds(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }
}
