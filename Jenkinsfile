pipeline {
  agent {
    dockerfile {
      filename 'dockerfile'
    }

  }
  stages {
    stage('Start') {
      steps {
        echo 'Starting to build the docker-react-app.'
      }
    }

    stage('wait') {
      steps {
        input 'Finished using the web site? (Click "Proceed" to continue)'
      }
    }

  }
}