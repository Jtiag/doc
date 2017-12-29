create external table C2C_POST(
 ROW string,
 as string,
 did  string,
 registered string,
 thirdCloudId string,
 timestamp string,
 gid string
 )
 ROW FORMAT SERDE 'org.apache.hadoop.hive.hbase.HBaseSerDe' 
 stored by 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' 
 with serdeproperties("hbase.columns.mapping"=":key,values:as,values:did,values:registered,values:thirdCloudId,values:timestamp,values:gid")
 tblproperties("hbase.table.name"="C2C_POST");