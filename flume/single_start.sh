#!/bin/bash
nohup ../bin/flume-ng agent -n a1 -c ../conf -f ../conf/flume-conf.properties &