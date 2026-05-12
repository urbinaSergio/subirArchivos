echo 'Inicia la creación del ambiente'
./secrets.sh
./bucket.sh
./intall_kinesis.sh
./ibmmq.sh
./dynamo.sh
./colas.sh
echo 'FIN DE CREACION DEL AMBIENTE'
