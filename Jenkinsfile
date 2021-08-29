pipeline {
    agent any
    tools { 
        maven 'LocalMaven'
        jdk 'LocalJDK8'
    }
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "export PATH=$PATH:/usr/local/bin"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }
    }
}
