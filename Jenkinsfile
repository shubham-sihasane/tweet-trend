pipeline {
    agent {
        node {
            label 'Jenkins-Slave'
        }
    }
    
    environment {
        PATH = "/opt/apache-maven-3.9.9/bin:$PATH"
        SCANNER_HOME = tool 'sonarqube-scanner'
    }
    
    stages {
        stage('Package') {
            steps {
                sh 'mvn package -DskipTests=true'
            }
        }
        stage('Sonarqube'){
            steps {
                withSonarQubeEnv('sonarqube-server') {
                    sh '''
                        $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=HappyEngineers -Dsonar.projectKey=HappyEngineers -Dsonar.java.binaries=.
                        echo $SCANNER_HOME
                    '''
                }
            }
        }
        stage('SonarQuality') {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        stage('Publish artifacts') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: '', mavenSettingsConfig: 'maven-config', traceability: true) {
                     sh "mvn deploy -DskipTests=true"
                }
            }
        }
    }
}
