echo 'Inicia creacion colas ibm mq'
docker build -t nuviosoftware-mq-local .
docker run --env LICENSE=accept --env MQ_QMGR_NAME=QM1 --publish 1414:1414 --publish 9443:9443 --detach nuviosoftware-mq-local -d
echo 'Ok colas ibm mq creadas'
echo 'Documentación de creación de ibm mq'
echo 'https://github.com/nuviosoftware/custom-ibm-mq'
echo 'Si te sale error con la versión de mq, cambiar buscar y reemplazar la versión en el archivo Docker'
echo 'FIN DE CREACION DE IBM MQ'

