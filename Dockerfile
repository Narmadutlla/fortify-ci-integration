# Use a base image with Java
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the repository into the container
COPY nexus-iq-cli-1.179.0-01.jar /app/nexus-iq-cli.jar

# Expose the port (if your app uses a port)
EXPOSE 8080

# Command to run your JAR file
CMD ["java", "-jar", "/app/nexus-iq-cli.jar"]
