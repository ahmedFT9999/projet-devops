FROM openjdk:11-jre-slim

WORKDIR /app

# Copy the Maven project (including pom.xml) to the working directory
COPY . .

# Grant executable permissions to the Maven Wrapper script
RUN chmod +x mvnw

# Build the Spring Boot application using Maven
RUN ./mvnw package -DskipTests

# Copy the compiled Spring Boot application JAR file to the working directory
COPY target/artifact-spring.jar /app/artifact-spring.jar

EXPOSE 8082

CMD ["java", "-jar", "artifact-spring.jar"]
