FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/spring-petclinic-2.1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
