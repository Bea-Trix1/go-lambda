#!/bin/bash

#esperando o localstack ficar de pé
sleep 10

# criando a funçao do lambda
awslocal lambda create-function --function-name meu-lambda \
    --runtime go1.x \
    --handler main \
    --zip-file fileb://main.zip \
    --role arn:aws:iam::000000000000:role/lambda-role