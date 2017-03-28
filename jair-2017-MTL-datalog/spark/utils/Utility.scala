import java.sql.Timestamp
import org.apache.spark.sql.types._
import org.apache.spark.sql._
import org.apache.spark.sql.functions.unix_timestamp

import scala.collection.mutable.ListBuffer


object Utility {
  
  def coalesceWithoutKey(sparkSession: SparkSession, df:DataFrame, strFrom:String, strTo:String) : DataFrame ={
    val sqLContext = sparkSession.sqlContext
    import sqLContext.implicits._
    var dFrom:Timestamp = null
    var dTo:Timestamp= null
    val result: ListBuffer[(Timestamp, Timestamp)] = ListBuffer()
    df.collect().foreach(row =>{
      if(dFrom == null && dTo == null){
        dFrom = row.getTimestamp(0)
        dTo = row.getTimestamp(1)
      }else if ((dFrom.equals(row.getTimestamp(0)) || dFrom.before(row.getTimestamp(0))) && (dTo.after(row.getTimestamp(0)) || dTo.equals(row.getTimestamp(0)))){
          if(dTo.before(row.getTimestamp(1))){ //(currDto >= dTo)
            dTo = row.getTimestamp(1)
          }
      }else if (row.getTimestamp(0).after(dTo)){ //(currDfrom > dTo)
          result += ((dFrom, dTo))
          dFrom = row.getTimestamp(0); dTo = row.getTimestamp(1)
      }
    })

    if(dFrom != null && dTo != null){
      result += ((dFrom, dTo))
    }
    println(result.size)

    return result.toDF(strFrom, strTo)
  }

  def partitionMapping(iterator:Iterator[Row]):Iterator[(String, Timestamp, Timestamp)] = {
    var count = 0
    val result: ListBuffer[(String, Timestamp, Timestamp)] = ListBuffer()
    if(iterator.nonEmpty){
      var dKey = ""
      var dFrom:Timestamp = null
      var dTo:Timestamp= null
      iterator.foreach(row =>{
        count+=1
        if(dKey != row.getString(0))
          println("prevKey: " + dKey + ", currKey: "+ row.getString(0))
        dKey = row.getString(0)
        if(dFrom == null && dTo == null){
          dFrom = row.getTimestamp(1)
          dTo = row.getTimestamp(2)
        } else if ((dFrom.equals(row.getTimestamp(1)) || dFrom.before(row.getTimestamp(1))) && (dTo.after(row.getTimestamp(1)) || dTo.equals(row.getTimestamp(1)))){
          if(dTo.before(row.getTimestamp(2))){ //(currDto >= dTo)
            dTo = row.getTimestamp(2)
          }
        }else if (row.getTimestamp(1).after(dTo)){ //(currDfrom > dTo)
          result += ((dKey, dFrom, dTo))
          dFrom = row.getTimestamp(1); dTo = row.getTimestamp(2)
        }
      })

      if(dFrom != null && dTo != null){
        result += ((dKey, dFrom, dTo))
      }
    }
    println("number on noncoalesced rows:" + count)
    return result.iterator
  }

  def partitionMappingWithKey(iterator:Iterator[Row]):Iterator[(String, Timestamp, Timestamp)] = {
    val result: ListBuffer[(String, Timestamp, Timestamp)] = ListBuffer()
    if(iterator.nonEmpty){
      var dKey = ""
      var dFrom:Timestamp = null
      var dTo:Timestamp= null
      iterator.foreach(row =>{
        if(dKey == "" && dFrom == null && dTo == null){
          dKey = row.getString(0)
          dFrom = row.getTimestamp(1)
          dTo = row.getTimestamp(2)
        } else if (row.getString(0) != dKey && dKey != "" && dFrom !=
          null && dTo != null){
          //println("Different :" + dKey + "-" + row.getString(0))
          result += ((dKey, dFrom, dTo))
          dKey = row.getString(0)
          dFrom = row.getTimestamp(1)
          dTo = row.getTimestamp(2)
        } else if (row.getString(0) == dKey){
          // (currDfrom.getTime >= dFrom.getTime) && (currDfrom.getTime <= dTo.getTime)
          if((dFrom.equals(row.getTimestamp(1)) || dFrom.before(row.getTimestamp(1))) && (dTo.after(row.getTimestamp(1)) || dTo.equals(row.getTimestamp(1)))){
            if(dTo.before(row.getTimestamp(2))){ //(currDto >= dTo)
              dTo = row.getTimestamp(2)
            }
          }else if (row.getTimestamp(1).after(dTo)){ //(currDfrom > dTo)
            result += ((dKey, dFrom, dTo))
            dKey = row.getString(0); dFrom = row.getTimestamp(1); dTo =
              row.getTimestamp(2)
          }
        }
      })

      if(dKey != "" && dFrom != null && dTo != null){
        result += ((dKey, dFrom, dTo))
      }
    }
    return result.iterator
  }

  def coalesceWithPartition(sparkSession: SparkSession, df:DataFrame, strKey:String, strFrom:String, strTo:String) : DataFrame ={
    import sparkSession.sqlContext.implicits._
    return df.mapPartitions(partitionMappingWithKey).toDF(strKey, strFrom, strTo)
  }


}
