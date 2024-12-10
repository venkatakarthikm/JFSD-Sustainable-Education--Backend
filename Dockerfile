# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file from target/ directory to the container
COPY target/jfsdprojectbackend-0.0.1-SNAPSHOT.war app.war

# Expose port 8080 (or dynamic port set by Render)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.war"]
