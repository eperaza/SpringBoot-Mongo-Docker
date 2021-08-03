pipeline {
    agent any
    tools { 
        maven "Maven-3.8.1"
        
    }
    stages {
        
        stage ("Build") {
            steps {
                script{
                    try{
                        sh "mvn clean"
                        echo "Building..."
                    }
                    catch(error){
                        echo error.getMessage()
                    }
                
                }
            }
        }

        stage ("Test") {
            steps {
                script{
                    try{
                        sh "mvn test"
                        echo "Testing..."
                    }
                    catch(error){
                        echo error.getMessage()
                    }
                    
                }
            }
        }
        /*
        stage("SonarQube Quality Gate Check"){
            steps{
                script{
                    withSonarQubeEnv("sonarqube-server"){
                        sh "mvn sonar:sonar"
                    }
                    timeout(time: 5, unit:"MINUTES"){
                        def qg = waitForQualityGate()
                            if(qg.status != "OK"){
                                error "Pipeline aborted due to quality failure: ${qg.status}"
                                return "Quality Check Failed"
                            }
                    }
                }
            }
        }
        */
        stage ("Deploy") {
            steps {
                script{
                    try{
                        sh "mvn install"
                        sh "docker-compose up -d"
                    }
                    catch(error){
                        echo error.getMessage()
                    }
                    
                }
                
            }
        }
    }
}