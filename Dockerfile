FROM openjdk:11-jre-slim

COPY target/artifact-spring.jar /app/artifact-spring.jar

WORKDIR /app

EXPOSE 8082

CMD ["java", "-jar", "artifact-spring.jar"]
