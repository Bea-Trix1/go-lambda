#!/bin/bash

#esperando o localstack ficar de pé
sleep 5

# criando a funçao do lambda
awslocal lambda create-function --function-name meu-lambda \
    --runtime go1.x \
    --handler main \
    --zip-file fileb://function.zip \
    --role arn:aws:iam::000000000000:role/lambda-role

# invocando a função e definindo o arquivo de saida
awslocal lambda invoke --function-name meu-lambda output.txt