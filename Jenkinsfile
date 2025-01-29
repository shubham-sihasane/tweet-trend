pipeline {
    agent {
        node {
            label 'Jenkins-Slave'
        }
    }
    
    environment {
        PATH = "/opt/apache-maven-3.9.9/bin:$PATH"
    }
    
    stages {
        stage('Package') {
            steps {
                sh 'mvn package -DskipTests=true'
            }
        }
    }
}
