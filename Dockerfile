#Pulling the image for all required libraries
FROM eclipse-temurin:17

#Creating a folder in a container where app code will be stored
WORKDIR /app

#copying the code from host to the container
COPY src/Main.java /app/Main.java

#compile the code
RUN javac Main.java

#run the app
CMD ["java" , "Main"]
