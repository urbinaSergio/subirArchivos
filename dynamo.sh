echo 'Inicio de creación de tablas de Dynamo'
aws --endpoint-url=http://localhost:4566 dynamodb create-table --table-name secret-priority --attribute-definitions AttributeName=priorityProvider,AttributeType=S --key-schema AttributeName=priorityProvider,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5&&

aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "1INA"}, "secretName": {"S": "alertas-dev-inalambria-sms-priority-1"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "2INA"}, "secretName": {"S": "alertas-dev-inalambria-sms-priority-2"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "3INA"}, "secretName": {"S": "alertas-dev-inalambria-sms-priority-3"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "4INA"}, "secretName": {"S": "alertas-dev-inalambria-sms-priority-4"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "5INA"}, "secretName": {"S": "alertas-dev-inalambria-sms-priority-5"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "1MAS"}, "secretName": {"S": "alertas-dev-masiv-sms-priority-1"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "2MAS"}, "secretName": {"S": "alertas-dev-masiv-sms-priority-2"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "3MAS"}, "secretName": {"S": "alertas-dev-masiv-sms-priority-3"}}'&&

aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "solicitudesgrupobancolombia.com.co"}, "secretName": {"S": "alertas-dev-masiv-email-account-1"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "bancolombia.com.co"}, "secretName": {"S": "alertas-dev-masiv-email-account-1"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "infobancolombia.com.co"}, "secretName": {"S": "alertas-dev-masiv-email-account-2"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "documentosgrupobancolombia.com"}, "secretName": {"S": "alertas-dev-masiv-email-account-2"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "sufi.com.co"}, "secretName": {"S": "alertas-dev-masiv-email-account-2"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "notificacionesbancolombia.com.co"}, "secretName": {"S": "alertas-dev-masiv-email-account-3"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "notificacionesbancolombia.com"}, "secretName": {"S": "alertas-dev-masiv-email-account-3"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "notificacionesbancolombia.comMAS"}, "secretName": {"S": "alertas-dev-masiv-email-account-3"}}'&&
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name secret-priority --item '{"priorityProvider": {"S": "notificacionesbancolombia.comMSV"}, "secretName": {"S": "alertas-dev-masiv-email-account-3"}}'&&


aws --endpoint-url=http://localhost:4566 dynamodb create-table --table-name template-email --attribute-definitions AttributeName=name,AttributeType=S --key-schema AttributeName=name,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
aws --endpoint-url=http://localhost:4566 dynamodb put-item --table-name template-email --item 'file://compra.json'
	

echo 'FIN DE CREACIÓN DE TABLAS DE DYNAMO'
