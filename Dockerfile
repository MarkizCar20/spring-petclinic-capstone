FROM adoptopenjdk:17-jdk-alpine
COPY target/*.jar app.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
