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
        sh 'docker build -t guvi-task .'
        echo 'Build successful'
      }
    }
    
    stage('Pushing image') {
      steps {
              
                   sh 'dccker push krishks1234/guvi-task'
              }
             echo 'image pushed'
        
      }
    }
    
  }
}
