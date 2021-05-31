pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        echo 'Starting to build the docker-react-app.'
        sh 'docker build -t docker_react .'
        sh 'echo myCustomeEnvVar = $myCustomeEnvVar'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker info'
        sh 'docker ps -a'
        sh 'docker ps'
        sh 'docker run --rm -dp 3000:3000 docker_react'
      }
    }

    stage('wait') {
      steps {
        input 'Finished using the web site? (Click "Proceed" to continue)'
      }
    }

  }
}