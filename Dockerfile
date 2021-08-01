FROM openjdk:8
ADD target/mongo-junit-docker.jar mongo-junit-docker.jar
EXPOSE 8087 
ENTRYPOINT ["java", "-jar", "mongo-junit-docker.jar"]