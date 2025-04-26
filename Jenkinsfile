pipeline {
    agent any
    environment {
        IMAGE_NAME = "atul0110/flask-app"
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds') // Jenkins credentials ID
    }
    stages {
        stage('Pull code from GitHub') {
            steps {
                git 'https://github.com/atulb01/DockerJenkinsResp.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Login to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push Docker Image to Docker Hub') {
            steps {
                sh 'docker push $IMAGE_NAME'
            }
        }
    }
}
