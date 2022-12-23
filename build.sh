#!/bin/bash

CodePath=/home/dhruv/Spring
ImageTag=$1

cd $CodePath

### Build Code ###
echo "Build code"
sudo rm -rf build
./gradlew build
sudo rm -f $CodePath/DOCKER/spring-boot-with-prometheus-0.1.0.jar
cp $CodePath/build/libs/spring-boot-with-prometheus-0.1.0.jar $CodePath/DOCKER/

### Build Docker Image ###
echo "Building Docker Image"
cd $CodePath/DOCKER
sudo docker build -t 29dhruv/springapp:$ImageTag .
sudo docker push 29dhruv/springapp:$ImageTag

### Running Container ###
sudo docker pull 29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/29dhruv/springapp:$ImageTag; sudo docker rm -f springapp; sudo docker run -it -d --name springapp -p 8081:8081 29dhruv/springapp:$ImageTag
echo "Deployment is done."
