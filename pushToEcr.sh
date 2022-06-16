#!bin/bash
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 136805086884.dkr.ecr.ap-southeast-1.amazonaws.com
docker build -t sowji-ecr .
docker tag sowji-ecr:latest 136805086884.dkr.ecr.ap-southeast-1.amazonaws.com/sowji-ecr:latest
docker push 136805086884.dkr.ecr.ap-southeast-1.amazonaws.com/sowji-ecr:latest
