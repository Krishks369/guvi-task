pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        echo 'Starting the pipeline'
      }
    }
    stage('Build Image') {
      steps {
        echo 'Building image'
        sh 'docker build -t krishks1234/guvi-task .'
        echo 'Build successful'
      }
    }
    
    stage('Pushing image') {
      steps {
              
                   sh 'docker push krishks1234/guvi-task'
              
             echo 'image pushed'
           }
      }
    }
    
  }

