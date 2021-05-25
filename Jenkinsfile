pipeline {
    agent any
    stages {
        stage('Start') {
        steps {
            echo 'Starting to build the docker-react-app.'
            // input('Do you want to proceed?')
        }
        }
        stage('building docker image') {
        steps {
            sh 'docker build -t docker-react-app .'
        }
        }
        stage('euning docker image') {
        steps {
            sh 'docker run -dp 3001:3000 docker-react-app'
        }
        }
}