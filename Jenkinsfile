pipeline {
    agent {
        node {
            label 'Jenkins-Slave'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean deploy'
            }
        }
    }
}
