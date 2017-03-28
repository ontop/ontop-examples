import java.io.FileWriter
import java.util.TimeZone

import org.apache.spark.sql._
import org.apache.spark.sql.types._

object NormalStopScala {

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

    //"/Users/user/Desktop/spark-data/tb_sensor_unified_1gb.parquet"
    var df = sparkSession.read.option("header", "true").schema(customSchema).parquet(args(0) + args(1))

//    endLoad = java.lang.System.currentTimeMillis()
//    startRun = java.lang.System.currentTimeMillis()

    df.createOrReplaceTempView("tb_sensor_unified")

    var df_c0_rs = sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE maxrotorspeed IS NOT NULL")
    df_c0_rs.createOrReplaceTempView("C0_RS")

    //**************** DIAMOND_CD1500_1 *******************//

    var df_diamond_cd1500_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM ( \n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER W AS dTo, \n" +
      "maxrotorspeed AS currRs, \n " +
      "LEAD(maxrotorspeed, 1) OVER W AS nextRs \n" +
      "FROM C0_RS) F \n " +
      "WHERE currRs >= 1500 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)");

    df_diamond_cd1500_1 = df_diamond_cd1500_1.filter(df_diamond_cd1500_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cd1500_1.col("dTo")))

    df_diamond_cd1500_1.createOrReplaceTempView("C1_CD1500_1")

    df_diamond_cd1500_1 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_CD1500_1 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_CD1500_1 ");

    df_diamond_cd1500_1.createOrReplaceTempView("C2_CD1500_1")

    df_diamond_cd1500_1 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts \n" +
      "FROM C2_CD1500_1 \n" +
      "WINDOW " +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_diamond_cd1500_1.createOrReplaceTempView("C3_CD1500_1");

    df_diamond_cd1500_1 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts \n" +
      "FROM C3_CD1500_1 \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_diamond_cd1500_1.createOrReplaceTempView("C4_CD1500_1");

    df_diamond_cd1500_1 = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs, \n" +
      "ts, \n" +
      "Crt_Total_ts \n" +
      "FROM C4_CD1500_1")

    df_diamond_cd1500_1 = df_diamond_cd1500_1.select(df_diamond_cd1500_1.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd1500_1.col("ts").as("dTo"))
      .filter(df_diamond_cd1500_1.col("Crt_Total_ts").equalTo(0))
      .filter(df_diamond_cd1500_1.col("ts").geq(df_diamond_cd1500_1.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS"))))

    df_diamond_cd1500_1 = df_diamond_cd1500_1.select(df_diamond_cd1500_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd1500_1.col("dTo").plus(functions.expr("INTERVAL 8 MINUTES")).as("dTo"))

    df_diamond_cd1500_1.createOrReplaceTempView("DIAMOND_CD1500_1")


    //**************** CD1500_2 *******************//

    var cd1500_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM ( \n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER W AS dTo, \n" +
      "maxrotorspeed AS currRs, \n " +
      "LEAD(maxrotorspeed, 1) OVER W AS nextRs \n" +
      "FROM C0_RS) F \n " +
      "WHERE currRs <= 200 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)");

    cd1500_2 = cd1500_2.filter(cd1500_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(cd1500_2.col("dTo")))

    cd1500_2.createOrReplaceTempView("C1_CD1500_2")

    cd1500_2 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_CD1500_2 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_CD1500_2 ");

    cd1500_2.createOrReplaceTempView("C2_CD1500_2")

    cd1500_2 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts \n" +
      "FROM C2_CD1500_2 \n" +
      "WINDOW " +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    cd1500_2.createOrReplaceTempView("C3_CD1500_2");

    cd1500_2 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts\n" +
      "FROM C3_CD1500_2\n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    cd1500_2.createOrReplaceTempView("C4_CD1500_2");

    cd1500_2 = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,\n" +
      "ts,\n" +
      "Crt_Total_ts \n" +
      "FROM C4_CD1500_2")

    cd1500_2 = cd1500_2.select(cd1500_2.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), cd1500_2.col("ts").as("dTo"))
      .filter(cd1500_2.col("Crt_Total_ts").equalTo(0))
      .filter(cd1500_2.col("ts").geq(cd1500_2.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS"))))

    cd1500_2.createOrReplaceTempView("CD1500_2")

    //**************** DIAMOND_CD1500_1 AND CD1500_2 JOIN *******************//

    var df_diamond_d = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD1500_1.dFrom > CD1500_2.dFrom AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom THEN DIAMOND_CD1500_1.dFrom \n" +
      "WHEN CD1500_2.dFrom > DIAMOND_CD1500_1.dFrom AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom THEN CD1500_2.dFrom \n" +
      "WHEN DIAMOND_CD1500_1.dFrom = CD1500_2.dFrom THEN DIAMOND_CD1500_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n " +
      "WHEN DIAMOND_CD1500_1.dTo < CD1500_2.dTo AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom THEN DIAMOND_CD1500_1.dTo \n" +
      "WHEN CD1500_2.dTo < DIAMOND_CD1500_1.dTo AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom THEN CD1500_2.dTo \n" +
      "WHEN DIAMOND_CD1500_1.dTo = CD1500_2.dTo THEN DIAMOND_CD1500_1.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_CD1500_1, CD1500_2 \n" +
      "WHERE \n" +
      "((DIAMOND_CD1500_1.dFrom > CD1500_2.dFrom AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom) OR (CD1500_2.dFrom > DIAMOND_CD1500_1.dFrom AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom) OR (DIAMOND_CD1500_1.dFrom = CD1500_2.dFrom)) AND \n" +
      "((DIAMOND_CD1500_1.dTo < CD1500_2.dTo AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom) OR (CD1500_2.dTo < DIAMOND_CD1500_1.dTo AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom) OR (DIAMOND_CD1500_1.dTo = CD1500_2.dTo))")

    df_diamond_d = df_diamond_d.select(df_diamond_d.col("dFrom").minus(functions.expr("INTERVAL 9 MINUTES")).as("dFrom"), df_diamond_d.col("dTo"))

    df_diamond_d.createOrReplaceTempView("DIAMOND_D")


    //**************** DIAMOND_CD6600_1 *******************//

    var df_diamond_cd6600_1 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM ( \n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER W AS dTo, \n" +
      "maxrotorspeed AS currRs, \n " +
      "LEAD(maxrotorspeed, 1) OVER W AS nextRs \n" +
      "FROM C0_RS) F \n " +
      "WHERE currRs >= 6600 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)");

    df_diamond_cd6600_1 = df_diamond_cd6600_1.filter(df_diamond_cd6600_1.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_diamond_cd6600_1.col("dTo")))

    df_diamond_cd6600_1.createOrReplaceTempView("C1_CD6600_1")

    df_diamond_cd6600_1 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_CD6600_1 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_CD6600_1 ");

    df_diamond_cd6600_1.createOrReplaceTempView("C2_CD6600_1")

    df_diamond_cd6600_1 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1,\n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2,\n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1,\n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2,\n" +
      "ts\n" +
      "FROM C2_CD6600_1 \n" +
      "WINDOW " +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_diamond_cd6600_1.createOrReplaceTempView("C3_CD6600_1");

    df_diamond_cd6600_1 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts\n" +
      "FROM C3_CD6600_1\n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_diamond_cd6600_1.createOrReplaceTempView("C4_CD6600_1");

    df_diamond_cd6600_1 = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,\n" +
      "ts,\n" +
      "Crt_Total_ts \n" +
      "FROM C4_CD6600_1")

    df_diamond_cd6600_1 = df_diamond_cd6600_1.select(df_diamond_cd6600_1.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd6600_1.col("ts").as("dTo"))
      .filter(df_diamond_cd6600_1.col("Crt_Total_ts").equalTo(0))
      .filter(df_diamond_cd6600_1.col("ts").geq(df_diamond_cd6600_1.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS"))))


    df_diamond_cd6600_1 = df_diamond_cd6600_1.select(df_diamond_cd6600_1.col("dFrom").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), df_diamond_cd6600_1.col("dTo").plus(functions.expr("INTERVAL 150 SECONDS")).as("dTo"))

    df_diamond_cd6600_1.createOrReplaceTempView("DIAMOND_CD6600_1")

    //**************** CD6600_2 *******************//

    var cd6600_2 = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM ( \n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER W AS dTo, \n" +
      "maxrotorspeed AS currRs, \n " +
      "LEAD(maxrotorspeed, 1) OVER W AS nextRs \n" +
      "FROM C0_RS) F \n " +
      "WHERE currRs <= 1500 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)");

    cd6600_2 = cd6600_2.filter(cd6600_2.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(cd6600_2.col("dTo")))

    cd6600_2.createOrReplaceTempView("C1_CD6600_2")

    cd6600_2 = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_CD6600_2 \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_CD6600_2 ");

    cd6600_2.createOrReplaceTempView("C2_CD6600_2")

    cd6600_2 = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1,\n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2,\n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1,\n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2,\n" +
      "ts\n" +
      "FROM C2_CD6600_2 \n" +
      "WINDOW \n" +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    cd6600_2.createOrReplaceTempView("C3_CD6600_2");

    cd6600_2 = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts\n" +
      "FROM C3_CD6600_2\n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    cd6600_2.createOrReplaceTempView("C4_CD6600_2");

    cd6600_2 = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,\n" +
      "ts,\n" +
      "Crt_Total_ts \n" +
      "FROM C4_CD6600_2")

    cd6600_2 = cd6600_2.select(cd6600_2.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS")).as("dFrom"), cd6600_2.col("ts").as("dTo"))
      .filter(cd6600_2.col("Crt_Total_ts").equalTo(0))
      .filter(cd6600_2.col("ts").geq(cd6600_2.col("prevTs").plus(functions.expr("INTERVAL 30 SECONDS"))))

    cd6600_2.createOrReplaceTempView("CD6600_2")

    //**************** DIAMOND_CD6600_1 AND CD6600_2 JOIN *******************//

    var df_c = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD6600_1.dFrom > CD6600_2.dFrom AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom THEN DIAMOND_CD6600_1.dFrom \n" +
      "WHEN CD6600_2.dFrom > DIAMOND_CD6600_1.dFrom AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom THEN CD6600_2.dFrom \n" +
      "WHEN DIAMOND_CD6600_1.dFrom = CD6600_2.dFrom THEN DIAMOND_CD6600_1.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_CD6600_1.dTo < CD6600_2.dTo AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom THEN DIAMOND_CD6600_1.dTo \n" +
      "WHEN CD6600_2.dTo < DIAMOND_CD6600_1.dTo AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom THEN CD6600_2.dTo \n" +
      "WHEN DIAMOND_CD6600_1.dTo = CD6600_2.dTo THEN DIAMOND_CD6600_1.dTo\nEND AS dTo\nFROM DIAMOND_CD6600_1, CD6600_2 \n" +
      "WHERE \n" +
      "((DIAMOND_CD6600_1.dFrom > CD6600_2.dFrom AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom) OR (CD6600_2.dFrom > DIAMOND_CD6600_1.dFrom AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom) OR (DIAMOND_CD6600_1.dFrom = CD6600_2.dFrom)) AND \n" +
      "((DIAMOND_CD6600_1.dTo < CD6600_2.dTo AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom) OR (CD6600_2.dTo < DIAMOND_CD6600_1.dTo AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom) OR (DIAMOND_CD6600_1.dTo = CD6600_2.dTo))")

    df_c.createOrReplaceTempView("C")

    //**************** DIAMOND_D AND C JOIN *******************//

    var df_diamond_e = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_D.dFrom > C.dFrom AND C.dTo > DIAMOND_D.dFrom THEN DIAMOND_D.dFrom\nWHEN C.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > C.dFrom THEN C.dFrom \n" +
      "WHEN DIAMOND_D.dFrom = C.dFrom THEN DIAMOND_D.dFrom \n" +
      "END AS dFrom,\n" +
      "CASE \n" +
      "WHEN DIAMOND_D.dTo < C.dTo AND DIAMOND_D.dTo > C.dFrom THEN DIAMOND_D.dTo\nWHEN C.dTo < DIAMOND_D.dTo AND C.dTo > DIAMOND_D.dFrom THEN C.dTo \n" +
      "WHEN DIAMOND_D.dTo = C.dTo THEN DIAMOND_D.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_D, C \n" +
      "WHERE \n" +
      "((DIAMOND_D.dFrom > C.dFrom AND C.dTo > DIAMOND_D.dFrom) OR (C.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > C.dFrom) OR (DIAMOND_D.dFrom = C.dFrom)) AND \n" +
      "((DIAMOND_D.dTo < C.dTo AND DIAMOND_D.dTo > C.dFrom) OR (C.dTo < DIAMOND_D.dTo AND C.dTo > DIAMOND_D.dFrom) OR (DIAMOND_D.dTo = C.dTo))")

    df_diamond_e = df_diamond_e.select(df_diamond_e.col("dFrom").minus(functions.expr("INTERVAL 2 MINUTES")).as("dFrom"), df_diamond_e.col("dTo"))

    df_diamond_e.createOrReplaceTempView("DIAMOND_E")

    //**************** B *******************//

    var df_mf = sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE mainflame IS NOT NULL")

    df_mf.createOrReplaceTempView("C0_MF")

    df_mf = sparkSession.sql("SELECT dFrom, dTo \n" +
      "FROM (\n" +
      "SELECT datetime as dFrom, \n" +
      "LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo, \n" +
      "mainflame AS currMf, \n" +
      "LEAD(mainflame, 1) OVER (ORDER BY  datetime) AS nextMf \n" +
      "FROM C0_MF) F \n" +
      "WHERE currMF <= 0.1 AND dTo IS NOT NULL")

    df_mf = df_mf.filter(df_mf.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_mf.col("dTo")))

    df_mf.createOrReplaceTempView("C1_MF")

    df_mf = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_MF \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_MF  ")

    df_mf.createOrReplaceTempView("C2_MF")

    df_mf = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1,\n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2,\n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1,\n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2,\n" +
      "ts\n" +
      "FROM C2_MF \n" +
      "WINDOW " +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), " +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)");

    df_mf.createOrReplaceTempView("C3_MF");

    df_mf = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts\n" +
      "FROM C3_MF\n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL");

    df_mf.createOrReplaceTempView("C4_MF");

    df_mf = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,\n" +
      "ts,\n" +
      "Crt_Total_ts \n" +
      "FROM C4_MF")

    df_mf = df_mf.select(df_mf.col("prevTs").plus(functions.expr("INTERVAL 10 SECONDS")).as("dFrom"), df_mf.col("ts").as("dTo"))
      .filter(df_mf.col("Crt_Total_ts").equalTo(0))
      .filter(df_mf.col("ts").geq(df_mf.col("prevTs").plus(functions.expr("INTERVAL 10 SECONDS"))))

    df_mf.createOrReplaceTempView("B")

    //**************** DIAMOND_E AND B JOIN *******************//

    var df_diamond_f = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_E.dFrom > B.dFrom AND B.dTo > DIAMOND_E.dFrom THEN DIAMOND_E.dFrom \n" +
      "WHEN B.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > B.dFrom THEN B.dFrom \n" +
      "WHEN DIAMOND_E.dFrom = B.dFrom THEN DIAMOND_E.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_E.dTo < B.dTo AND DIAMOND_E.dTo > B.dFrom THEN DIAMOND_E.dTo \n" +
      "WHEN B.dTo < DIAMOND_E.dTo AND B.dTo > DIAMOND_E.dFrom THEN B.dTo \n" +
      "WHEN DIAMOND_E.dTo = B.dTo THEN DIAMOND_E.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_E, B \n" +
      "WHERE \n" +
      "((DIAMOND_E.dFrom > B.dFrom AND B.dTo > DIAMOND_E.dFrom) OR (B.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > B.dFrom) OR (DIAMOND_E.dFrom = B.dFrom)) AND " +
      "\n((DIAMOND_E.dTo < B.dTo AND DIAMOND_E.dTo > B.dFrom) OR (B.dTo < DIAMOND_E.dTo AND B.dTo > DIAMOND_E.dFrom) OR (DIAMOND_E.dTo = B.dTo))")


    df_diamond_f = df_diamond_f.select(df_diamond_f.col("dFrom").minus(functions.expr("INTERVAL 2 MINUTES")).as("dFrom"), df_diamond_f.col("dTo"))

    df_diamond_f.createOrReplaceTempView("DIAMOND_F")

    //**************** A *******************//

    var df_a = sparkSession.sql("SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL")

    df_a.createOrReplaceTempView("C0_AP")

    df_a =  sparkSession.sql("SELECT dFrom, dTo " +
      "FROM (" +
      "SELECT datetime as dFrom, " +
      "LEAD(datetime, 1) OVER W AS dTo, " +
      "activepower AS currAp, " +
      "LEAD(activepower, 1) OVER W AS nextAp " +
      "FROM C0_AP" + ") F " +
      "WHERE currAp < 0.15 AND dTo IS NOT NULL \n" +
      "WINDOW W AS (ORDER BY  datetime)")

    df_a = df_a.filter(df_a.col("dFrom").plus(functions.expr("INTERVAL 1 DAY")).geq(df_a.col("dTo")))

    df_a.createOrReplaceTempView("C1_AP")

    df_a = sparkSession.sql("SELECT 1 AS Start_ts, 0 AS End_ts, dFrom AS ts \n" +
      "FROM C1_AP \n" +
      "UNION ALL \n" +
      "SELECT 0 AS Start_ts, 1 AS End_ts, dTo AS ts \n" +
      "FROM C1_AP  ")

    df_a.createOrReplaceTempView("C2_AP")

    df_a = sparkSession.sql("SELECT \n" +
      "SUM(Start_ts) OVER W1 AS Crt_Total_ts_1, \n" +
      "SUM(End_ts) OVER W1 AS Crt_Total_ts_2, \n" +
      "SUM(Start_ts) OVER W2 AS Prv_Total_ts_1, \n" +
      "SUM(End_ts) OVER W2 AS Prv_Total_ts_2, \n" +
      "ts \n" +
      "FROM C2_AP \n" +
      "WINDOW \n" +
      "W1 AS (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING), \n" +
      "W2 AS (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)")

    df_a.createOrReplaceTempView("C3_AP")

    df_a = sparkSession.sql("SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts \n" +
      "FROM C3_AP \n" +
      "WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL")

    df_a.createOrReplaceTempView("C4_AP")

    df_a = sparkSession.sql("SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs, ts, Crt_Total_ts FROM C4_AP")


    df_a = df_a.select(df_a.col("prevTs").plus(functions.expr("INTERVAL 60 SECONDS")).as("dFrom"), df_a.col("ts").as("dTo"))
      .filter(df_a.col("Crt_Total_ts").equalTo(0))
      .filter(df_a.col("ts").geq(df_a.col("prevTs").plus(functions.expr("INTERVAL 60 SECONDS"))))

    df_a.createOrReplaceTempView("A")

    //**************** DIAMOND_F AND A JOIN *******************//

    var dfJoin = sparkSession.sql("SELECT \n" +
      "CASE \n" +
      "WHEN DIAMOND_F.dFrom > A.dFrom AND A.dTo > DIAMOND_F.dFrom THEN DIAMOND_F.dFrom \n" +
      "WHEN A.dFrom > DIAMOND_F.dFrom AND DIAMOND_F.dTo > A.dFrom THEN A.dFrom \n" +
      "WHEN DIAMOND_F.dFrom = A.dFrom THEN DIAMOND_F.dFrom \n" +
      "END AS dFrom, \n" +
      "CASE \n" +
      "WHEN DIAMOND_F.dTo < A.dTo AND DIAMOND_F.dTo > A.dFrom THEN DIAMOND_F.dTo \n" +
      "WHEN A.dTo < DIAMOND_F.dTo AND A.dTo > DIAMOND_F.dFrom THEN A.dTo \n" +
      "WHEN DIAMOND_F.dTo = A.dTo THEN DIAMOND_F.dTo \n" +
      "END AS dTo \n" +
      "FROM DIAMOND_F, A \n" +
      "WHERE \n" +
      "((DIAMOND_F.dFrom > A.dFrom AND A.dTo > DIAMOND_F.dFrom) OR (A.dFrom > DIAMOND_F.dFrom AND DIAMOND_F.dTo > A.dFrom) OR (DIAMOND_F.dFrom = A.dFrom)) AND \n" +
      "((DIAMOND_F.dTo < A.dTo AND DIAMOND_F.dTo > A.dFrom) OR (A.dTo < DIAMOND_F.dTo AND A.dTo > DIAMOND_F.dFrom) OR (DIAMOND_F.dTo = A.dTo))")

    dfJoin.show(10000)

//    endRun = java.lang.System.currentTimeMillis()
//
//    val fw = new FileWriter(args(4), true)
//    fw.write(args(3) +"; "+(endLoad - startLoad)+"; "+(endRun - startRun))
//    fw.close()

    sparkSession.close()
  }
}
