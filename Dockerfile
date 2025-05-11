# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app
# First ensure target directory exists
RUN mkdir -p /target
# Copy the JAR file from the Maven build
COPY target/Transaction-Service-*.jar app.jar

# Expose the application port
EXPOSE 8084

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]