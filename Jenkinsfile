pipeline {
  agent any
  environment {
   DOCKERHUB = credentials('dockerhub-cred')
   dockerImage=''
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
        dockerImage = docker.build('krishks1234/guvi-task')
        docker.withRegistry('', DOCKERHUB) {
        dockerImage.push()
                    }
           }
      }
    }
    
  }
}

