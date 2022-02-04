#!/bin/bash

# rm -rf api
# rm -rf client

git clone https://github.com/ActiveLearningStudio/StudioSingleServer.git currikinew

cd currikinew

mkdir -p {mysqldata,postgresdata,pgadmin-data}

git clone https://github.com/ActiveLearningStudio/ActiveLearningStudio-API.git apinew
cp -r api/storagetoclone/* apinew/storage
rm -rf api
mv apinew api

cp env.api api/.env


git clone https://github.com/ActiveLearningStudio/ActiveLearningStudio-react-client.git client
cp env.client client/.env.local


cp env.trax trax-lrs/.env
cp tsugi.config.php tsugi/config.php
cp tsugi.mod.config.php tsugi/mod/curriki/config.php

docker-compose -f docker-compose-local.yml up --force-recreate