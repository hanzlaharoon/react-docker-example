pipeline {
  agent any
  stages {
    stage('Start') {
      steps {
        echo 'Starting to build the docker-react-app.'
      }
    }

    stage('building docker image') {
      steps {
        sh 'docker build -t docker-react-app .'
      }
    }

    stage('runing docker image') {
      steps {
        sh 'docker run -d docker-react-app'
        input 'Finished using the web site? (Click "Proceed" to continue)'
      }
    }

  }
}