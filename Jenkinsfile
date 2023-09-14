pipeline {
  agent any
  environment {
   DOCKERHUB = credentials('docker-cred')
   dockerImage=''
   registry = 'krishks1234/guvi-task'
  }
  stages {
    stage('Initialize') {
      steps {
        echo 'Starting the pipeline'
      }
    }
    stage('Build Image') {
      steps {
        echo 'Building image'
        script {
        dockerImage = docker.build registry
        docker.withRegistry('', DOCKERHUB) {
        dockerImage.push()
                    }
           }
      }
    }
    
  }
}

