
# Simple Java App

This project is a simple arithmetic calculator implemented in Java. It allows users to input two numbers and perform basic operations such as addition, subtraction, multiplication, and division.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system

## Project Structure

- **Dockerfile**: Defines the steps to build and run the application in Docker containers.
- **.dockerignore**: Specifies which files should be excluded from the Docker image.
- **Java Source Code**: Simple calculator application located in the `src` directory.
- **Maven**: The project is built using Maven, and the `pom.xml` contains the necessary dependencies.

## How to Build and Run the Application

### 1. Clone the Repository

First, clone the project repository to your local machine.

```bash
git clone <repository-url>
cd <repository-folder>
```

### 2. Build the Docker Image

To build the Docker image for the application, run the following command:

```bash
docker build -t simplejavaapp .
```

This command will:

- Use the official Maven image to build the application.
- Package the application into a `.jar` file.
- Copy the `.jar` to the final image based on an OpenJDK image.

### 3. Run the Docker Container

Once the image is built, you can run the Docker container with the following command:

```bash
docker run -it --rm simplejavaapp
```

The `-it` flag ensures the application runs interactively, allowing you to input numbers and perform calculations. The `--rm` flag automatically removes the container after it exits.

### 4. Using the Application

When the container runs, the application will prompt you for input:

1. Enter the first number.
2. Enter the second number.
3. Enter the operation you wish to perform (`+`, `-`, `*`, `/`).

The application will display the result of the calculation.

### Example

```bash
Enter first number:
5
Enter second number:
3
Enter an operation (+, -, *, /):
+
The result is: 8.0
```

### 5. Clean Up

To remove the Docker image from your system after testing:

```bash
docker rmi simplejavaapp
```

## Files

- `Dockerfile`: Contains instructions for building the Docker image.
- `.dockerignore`: Lists files and directories that should be excluded from the Docker image build.
- `src`: Contains the Java source code.
- `pom.xml`: Maven configuration file for building the Java project.

