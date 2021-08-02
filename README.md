# SpringBoot-Mongo-JUnit-Exceptions

test build with Jenkins...

# Run Jenkins and Sonar on testing server
sudo docker container run -d -p 8080:8080 \
    -v jenkins:/var/jenkins_home \
    --name jenkins \
    jenkins/jenkins:lts-jdk11

sudo docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 -v sonarqube-conf:/opt/sonarqube/conf -v sonarqube-data:/opt/sonarqube/data -v sonarqube-logs:/opt/sonarqube/logs -v sonarqube-extensions:/opt/sonarqube/extensions sonarqube

# Build Docker-Compose file
sudo docker build -f Dockerfile -t mongo-junit .