#!/bin/bash
 
echo "creando s3 bucket"

cd archivos\ carga\ bucket
aws --endpoint-url=http://localhost:4566 s3 mb s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 ls
 
aws --endpoint-url=http://localhost:4566 s3 cp nu0151001_config_listener_mq_local.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0151001_top_ccdt_nodo1_dev.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0151001_top_ccdt_nodo2_dev.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0151001_top_dev.jks s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0151001_config_resource_mq.json s3://bucketssl

aws --endpoint-url=http://localhost:4566 s3 cp nu0154001_config_listener_mq_pdn.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0154001_alert_ccdt_nodo1_pdn.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0154001_alert_ccdt_nodo2_pdn.json s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0154001_alert_pdn.jks s3://bucketssl
aws --endpoint-url=http://localhost:4566 s3 cp nu0154001_config_resource_mq.json s3://bucketssl
 
 
echo "Lista de archivos s3"
aws --endpoint-url=http://localhost:4566 s3 ls bucketssl
