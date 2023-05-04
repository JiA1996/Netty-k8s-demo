# Netty-k8s-demo

Test on local:
./mvnw clean test exec:java

Build the image on Mac M1
docker build --platform=linux/amd64 -t netty-test:v1.0.1 . 

