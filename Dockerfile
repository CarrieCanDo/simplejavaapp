# Use an official Maven image to build the application
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project files to the container
COPY pom.xml .
COPY src ./src

# Package the application (this will download dependencies and build your project)
RUN mvn clean package

# Use a different image to run the application
FROM openjdk:21-jdk-oracle as prod

# Set the working directory for the application
WORKDIR /app

# Copy the built .jar file from the build stage to the run stage
COPY --from=build /app/target/*.jar /app/simplejavaapp.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "simplejavaapp.jar"]
