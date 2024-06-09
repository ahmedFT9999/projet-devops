FROM openjdk:11-jre-slim

COPY target/artifact-spring.jar /app/artifact-spring.jar

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "artifact-spring.jar"]
 sh "curl -L https://github.com/docker/compose/releases/download/${env.DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose"
                    sh 'chmod +x /usr/local/bin/docker-compose'
