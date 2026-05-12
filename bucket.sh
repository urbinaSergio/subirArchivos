echo 'Inicia creacion de buckets'
aws --endpoint-url=http://localhost:4566 s3 mb s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 mb s3://nu0154001-alertas-local-glue-massi-data
aws --endpoint-url=http://localhost:4566 s3 mb s3://nu0151001-topes-mig-local-logs-topes
aws --endpoint-url=http://localhost:4566 s3 mb s3://nu0151001-topes-mig-local-recovery-logs
aws configure set default.s3.multipart_threshold 5GB
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/part-00000-a24fe4db-dd9a-474b-af40-90881671e8a7-c000.snappy.parquet s3://nu0151001-topes-mig-local-logs-topes/2025-12-05/ --storage-class GLACIER
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0151001_config_listener_mq_local.json s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0151001_config_resource_mq.json s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0151001_top_dev.jks s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0151001_top_ccdt_nodo1_dev.json s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0151001_top_ccdt_nodo2_dev.json s3://bucket-config-functional
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/part-masiv.csv s3://nu0154001-alertas-local-glue-massi-data/email/
echo 'Ok archivos de confi de functional cargados'
aws --endpoint-url=http://localhost:4566 s3 mb s3://bucket-masi-ssl
aws --endpoint-url=http://localhost:4566 s3 cp "archivos carga bucket"/nu0154001_alert_dev_masivapp-com.jks s3://bucket-masi-ssl
echo 'Ok archivos de conexión a masivian cargados'
echo 'FIN DE CREACION DE BUCKETS'
