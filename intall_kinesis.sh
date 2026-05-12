echo 'Inicio de creación de stream kinesis'
echo 'Inicio de creación Elastic Cache destino directo'
aws --endpoint-url=http://localhost:4566 es create-elasticsearch-domain --domain-name lz-local&&
aws --endpoint-url=http://localhost:4566 s3 mb s3://nu0154001-alertas-local-logs-lz&&
aws --endpoint-url=http://localhost:4566 kinesis create-stream --stream-name kinesis-lz-stream --shard-count 2&&
aws --endpoint-url=http://localhost:4566 firehose create-delivery-stream --delivery-stream-name log-to-lz-stream --delivery-stream-type KinesisStreamAsSource --kinesis-stream-source-configuration "KinesisStreamARN=arn:aws:kinesis:us-east-1:000000000000:stream/kinesis-lz-stream,RoleARN=arn:aws:iam::000000000000:role/Firehose-Reader-Role" --elasticsearch-destination-configuration "RoleARN=arn:aws:iam::000000000000:role/Firehose-Reader-Role,DomainARN=arn:aws:es:us-east-1:000000000000:domain/lz-local,IndexName=activity,TypeName=activity,S3BackupMode=AllDocuments,S3Configuration={RoleARN=arn:aws:iam::000000000000:role/Firehose-Reader-Role,BucketARN=arn:aws:s3:::nu0154001-alertas-local-logs-lz}"&&
echo 'Fin de creación de stream kinesis'