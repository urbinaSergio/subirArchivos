echo 'Inicia creacion de secretos '
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-local-secretrds-CNX  --description "Secret for Alerts" --secret-string "file://archivos de secretos/auth-postgres.json"&&
echo 'Ok secreto de postgres'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name gestion-comunicacion-local-secretrds-CNX  --description "Secret for Alerts PJ" --secret-string "file://archivos de secretos/auth-postgres-pj.json"&&
echo 'Ok secreto de postgres'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-logs-local-secretrds-CNX  --description "Secret for Alerts logs" --secret-string "file://archivos de secretos/auth-postgres-logs.json"&&
echo 'Ok secreto de postgres'
aws --endpoint-url http://localhost:4566 secretsmanager create-secret --name alertas-local-secretrabbit-CNX --description "RabbitMQ Secret" --secret-string "file://archivos de secretos/secret_rabbitmq.json"&&
echo 'Ok secreto de rabbit'
aws --endpoint-url http://localhost:4566 secretsmanager create-secret --name alertas-local-secret-rabbit-dual-CNX --description "RabbitMQ dual Secret" --secret-string "file://archivos de secretos/secret_rabbitmq2.json"&&
echo 'Ok secreto de cognito PN'
aws --endpoint-url http://localhost:4566 secretsmanager create-secret --name nu0154001-alertas-local-cognito-connection --description "Cognito PN Secret" --secret-string "file://archivos de secretos/cognito_pn.json"&&
echo 'Ok secreto de rabbit Dual'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name nu0154001-alertas-local-iseries-retrieve-information --description "Secret for connection to iseries" --secret-string "file://archivos de secretos/iseries.json"&&
echo 'Ok secreto de rabbit Dual'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name secret-local-mdm-retrieve-information --description "Secret for connection to mdm" --secret-string "file://archivos de secretos/mdm.json"&&
echo 'Ok secreto de Iseries'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-inalambria-sms-priority-1 --description "Secret for Inalambria sms" --secret-string "file://archivos de secretos/auth-inalambriaQA1.json"&&
echo 'Ok secreto autenticacion SMS inalambria1'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-inalambria-sms-priority-2 --description "Secret for Inalambria sms" --secret-string "file://archivos de secretos/auth-inalambriaQA2.json"&&
echo 'Ok secreto autenticacion SMS inalambria2'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-inalambria-sms-priority-3 --description "Secret for Inalambria sms" --secret-string "file://archivos de secretos/auth-inalambriaQA3.json"&&
echo 'Ok secreto autenticacion SMS inalambria3'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-inalambria-sms-priority-4 --description "Secret for Inalambria sms" --secret-string "file://archivos de secretos/auth-inalambriaQA4.json"&&
echo 'Ok secreto autenticacion SMS inalambria4'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-inalambria-sms-priority-5  --description "Secret for Inalambria sms" --secret-string "file://archivos de secretos/auth-inalambriaQA5.json"&&
echo 'Ok secreto autenticacion SMS inalambria5'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-sms-priority-1  --description "Secret for masiv sms" --secret-string "file://archivos de secretos/auth-sms-masivQA1.json"&&
echo 'Ok secreto autenticacion SMS masiv1'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-sms-priority-2  --description "Secret for masiv sms" --secret-string "file://archivos de secretos/auth-sms-masivQA2.json"&&
echo 'Ok secreto autenticacion SMS masiv2'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-sms-priority-3  --description "Secret for masiv sms" --secret-string "file://archivos de secretos/auth-sms-masivQA3.json"&&
echo 'Ok secreto autenticacion SMS masiv3'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-email-account-1  --description "Secret for masiv email" --secret-string "file://archivos de secretos/auth-email-masivQA.json"&&
echo 'Ok secreto autenticacion EMAIL masiv 1'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-email-account-2  --description "Secret for masiv email" --secret-string "file://archivos de secretos/auth-email-masivQA.json"&&
echo 'Ok secreto autenticacion EMAIL masiv 2'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-dev-masiv-email-account-3 --description "Secret for masiv email" --secret-string "file://archivos de secretos/auth-email-masivQA.json"&&
echo 'Ok secreto autenticacion EMAIL masiv 3'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name bucket-masi-ssl  --description "Secret for ssl to connect masivian" --secret-string "file://archivos de secretos/auth-masi-ssl.json"&&
echo 'Ok Secreto bucket SSL'
aws --endpoint-url=http://localhost:4566 secretsmanager create-secret --name alertas-local-sterling-secret-CNX  --description "Sterling Secret" --secret-string "file://archivos de secretos/secret_sterling.json"&&
echo 'Ok Secreto sterling'
aws --endpoint-url http://localhost:4566 secretsmanager create-secret --name alertas-local-secrettredis-cnx-consumeruser --description "redis secret" --secret-string "file://archivos de secretos/secret_redis.json"&&
echo 'Ok Secreto redis'
echo 'FIN DE CREACION DE SECRETOS'
