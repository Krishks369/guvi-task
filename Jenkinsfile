pipeline {
  agent any
  environment {
    DOCKERHUB = credentials('docker-cred')
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
        sh 'docker stop my-container || true'
        sh 'docker rm my-container || true'
        sh 'docker build -t krishks1234/guvi-task .'
        sh 'docker run -d -p 80:80 krishks1234/guvi-task'
        echo 'Build successful'
      }
    }
    stage('Docker Login') {
      steps {
        sh 'docker login -u $DOCKERHUB_USR -p $DOCKERHUB_PSW'
      }
    }
      stage('Pushing image') {
      steps {
           sh 'docker push krishks1234/guvi-task'
           echo 'image pushed'
           sh 'docker logout'
           }
      }
    }
    
  }
