/opt/cloudera/parcels/CDH-5.5.0-1.cdh5.5.0.p0.8/lib/spark/bin/spark-submit \
--class cn.spark.SparkReadHbase \
--master spark://cdhslave2:7077 \
--deploy-mode cluster \
--executor-memory 3G \
--total-executor-cores 48 \
--supervise \
--driver-class-path /home/sparkdemo/mysql-connector-java-5.1.38-bin.jar \
/home/sparkdemo/sparkdemo-1.0.jar \

