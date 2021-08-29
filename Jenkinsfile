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
                echo "Testing 123"
                sh "docker build . --platform linux/x86_64 -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }
    }
}
