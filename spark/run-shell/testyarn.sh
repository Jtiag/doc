/opt/cloudera/parcels/CDH-5.5.0-1.cdh5.5.0.p0.8/lib/spark/bin/spark-submit \
--class cn.spark.SparkReadHbase \
--master yarn-cluster \
--num-executors 8 \
--driver-memory 1G \
--executor-memory 1G \
--executor-cores 2 \
--jars /home/sparkdemo/hjar/hbase-client-1.0.0-cdh5.5.0.jar,/home/sparkdemo/hjar/hbase-protocol-1.0.0-cdh5.5.0.jar,/home/sparkdemo/hjar/hbase-server-1.0.0-cdh5.5.0.jar,/home/sparkdemo/hjar/htrace-core-3.2.0-incubating.jar,/home/sparkdemo/hjar/hbase-common-1.0.0-cdh5.5.0.jar,/home/sparkdemo/mysql-connector-java-5.1.38-bin.jar \
--files /opt/cloudera/parcels/CDH-5.5.0-1.cdh5.5.0.p0.8/lib/spark/conf/hbase-site.xml \
/home/sparkdemo/sparkdemo-1.0.jar \
