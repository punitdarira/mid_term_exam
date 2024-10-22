# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Install g++
RUN apt-get update && apt-get install -y g++

# Set the working directory in the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY Main.cpp .

# Compile the CPP program
RUN g++ -o main Main.cpp

# Run the CPP program
CMD ["./main"]