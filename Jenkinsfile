pipeline {
  agent any
  environment {
    DOCKERHUB = credentials('dockerhub-cred')
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
        def dockerImage = docker.build('krishks1234/guvi-task')
        echo 'Build successful'
      }
    }
    
    stage('Pushing image') {
      steps {
           script {
                    
                    docker.withRegistry('', DOCKERHUB_USR, DOCKERHUB_PWD) {
                        dockerImage.push()
                    }
           }
      }
    }
    
  }
}

