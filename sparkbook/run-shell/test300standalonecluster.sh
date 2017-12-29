/opt/cloudera/parcels/CDH-5.5.0-1.cdh5.5.0.p0.8/lib/spark/bin/spark-submit \
--class cn.spark.SparkReadHbase \
--master spark://cdhmanager:7077 \
--deploy-mode cluster \
--supervise \
--executor-memory 3G \
--total-executor-cores 48 \
--driver-class-path /home/sparkdemo/mysql-connector-java-5.1.38-bin.jar \
--jars /home/sparkdemo/hjar/hbase-client-1.1.2.2.3.2.0-2950.jar,/home/sparkdemo/hjar/hbase-common-1.1.2.2.3.2.0-2950.jar,/home/sparkdemo/hjar/hbase-protocol-1.1.2.2.3.2.0-2950.jar,/home/sparkdemo/hjar/hbase-server-1.1.2.2.3.2.0-2950.jar,/home/sparkdemo/hjar/htrace-core-3.1.0-incubating.jar,/home/sparkdemo/mysql-connector-java-5.1.38-bin.jar \
--files /opt/cloudera/parcels/CDH-5.5.0-1.cdh5.5.0.p0.8/lib/spark/conf/hbase-site.xml \
/home/sparkdemo/sparkdemo-1.0.jar \

