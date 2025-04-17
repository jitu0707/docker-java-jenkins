# Step 1: Use OpenJDK base image
FROM openjdk:17-slim

# Step 2: Create app directory inside container
WORKDIR /usr/src/app

# Step 3: Copy the source code
COPY HelloWorld.java .

# Step 4: Compile Java file
RUN javac HelloWorld.java

# Step 5: Run the program
CMD ["java", "HelloWorld"]
