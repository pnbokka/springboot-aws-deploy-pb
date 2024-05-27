FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-deploy-pb-0.0.1-SNAPSHOT.jar spring-boot-aws-deploy-pb-service.jar
ENTRYPOINT ["java","-jar","/spring-boot-aws-deploy-pb-service.jar"]