#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    root@138.197.181.245:home/root/

echo 'Restart server...'

ssh ~/.ssh/id_rsa root@138.197.181.245 << EOF

pgreb java |  | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'