#!/bin/bash

$SPARK_HOME/bin/spark-shell \
  --packages org.apache.iceberg:iceberg-spark-runtime-3.4_2.12:1.4.0 \
  --conf spark.sql.extensions=org.apache.iceberg.spark.extensions.IcebergSparkSessionExtensions \
  --conf spark.driver.extraClassPath=$SPARK_HOME/jars/*
