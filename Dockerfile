FROM openjdk:11-jre-slim

COPY target/artifact-spring.jar /app/artifact-spring.jar

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "artifact-spring.jar"]
stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    sh "docker push your-image-name"
                }
            }
        }
