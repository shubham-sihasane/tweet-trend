pipeline {
    agent {
        node {
            label 'Jenkins-Slave'
        }
    }
    
    stages {
        stage('Git Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/shubham-sihasane/tweet-trend.git'
            }
        }
    }
}
