FROM openjdk:11-jre-slim

COPY target/artifact-spring.jar /app/artifact-spring.jar

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "artifact-spring.jar"]
DOCKER_COMPOSE_ARCH = "${sh(script: 'echo $(uname -s)-$(uname -m)', returnStdout: true).trim()}"
