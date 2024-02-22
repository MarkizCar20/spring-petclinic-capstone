FROM alpine:latest

# Install OpenJDK 17
RUN apk add --no-cache openjdk17

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar app.jar

# Set the entry point for the container
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
