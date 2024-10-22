pipeline {
    agent {
        kubernetes {
            yamlFile 'jenkins-agent.yaml'
        }
    }
    stages {
        stage('Build Docker Image') {
            steps {
                container('docker') {
                    script {
                        sh 'docker build -t my-image:latest .'
                    }
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                container('docker') {
                    script {
                        sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                        sh 'docker push my-image:latest'
                    }
                }
            }
        }
    }
}
