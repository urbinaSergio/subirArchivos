echo 'Inicia creacion de colas sqs'
aws --endpoint-url http://localhost:4566 sqs create-queue --queue-name nu0154001-alertas-local-massive-sms-sqs
echo 'Cola sms creada'
aws --endpoint-url http://localhost:4566 sqs create-queue --queue-name nu0154001-alertas-local-massive-email-sqs
echo 'cola email creada'
echo 'ok Creacion de colas'