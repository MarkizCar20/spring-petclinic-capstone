FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/*.jar /app/

CMD ["java", "-jar", "/app/*.jar"]