# Lakehouse Lab: MinIO + Apache Iceberg + Spark + Trino

## 1. Start MinIO
docker compose -f docker/docker-compose.minio.yml up -d

## 2. Create bucket
Visit http://localhost:9001
→ Create bucket: iceberg-warehouse

## 3. Start Trino
docker compose -f docker/docker-compose.trino.yml up -d

## 4. Run Spark shell
bash spark/run_spark_shell.sh

## 5. Create Iceberg table
spark.sql("""
CREATE TABLE demo.db.sales (
  id int,
  amount double,
  ts timestamp
) USING iceberg
""")

## 6. Query in Trino
SELECT * FROM iceberg.demo.db.sales;

