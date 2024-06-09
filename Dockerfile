FROM openjdk:11-jre-slim

COPY target/artifact-spring.jar /app/artifact-spring.jar

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "artifact-spring.jar"]
 sudo curl –L "https://github.com/docker/compose/releases/download/1.23.2/dockercompose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

