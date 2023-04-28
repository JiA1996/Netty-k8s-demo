# The JDK 9 development image for building
# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /jersey-netty-app
# Add maven
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

#CMD ["./mvnw", "clean test exec:java"]
CMD ./mvnw clean test exec:java