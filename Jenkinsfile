pipeline {
  agent {
    dockerfile {
      filename 'dockerfile'
      label 'docker-react-app'
    }

  }
  stages {
    stage('Run Docker Container') {
      steps {
        echo 'Starting to build the docker-react-app.'
        sh 'echo myCustomeEnvVar = $myCustomeEnvVar'
        sh 'docker --rm -dp 3000:3000 docker-react-app'
      }
    }

    stage('wait') {
      steps {
        input 'Finished using the web site? (Click "Proceed" to continue)'
      }
    }

  }
}