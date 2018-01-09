#!/bin/bash
export FLUME_HOME=/home/hadoop/applications/flume-1.6.0
name_total=`grep "command" ../conf/flume-conf.properties|grep -v grep|wc -l`
n=1
while [ $n -lt 2 ]
do
{
i=1
while [ $i -le 1 ]
 do
  name=`grep "command" ../conf/flume-conf.properties|grep -v grep|awk -F. '{print $1}'|sed -n "$i p"`
 {
  if_exist=`ps aux|grep flume|grep -v  grep|wc -l`
  if [ ${if_exist} -ne 1  ]; then
   nohup $FLUME_HOME/bin/flume-ng agent -n $name -c $FLUME_HOME/conf -f $FLUME_HOME/conf/flume-conf.properties &
  fi
 }
  let i=$i+1
 done
}
sleep 10
  let n=$n+1
done
