FROM openjdk:11

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


2024-06-09 22:49:11+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.7.44-1.el7 started.
2024-06-09 22:49:12+00:00 [ERROR] [Entrypoint]: MYSQL_USER="root", MYSQL_USER and MYSQL_PASSWORD are for configuring a regular user and cannot be used for the root user
    Remove MYSQL_USER="root" and use one of the following to control the root user password:
    - MYSQL_ROOT_PASSWORD
    - MYSQL_ALLOW_EMPTY_PASSWORD
    - MYSQL_RANDOM_ROOT_PASSWORD
