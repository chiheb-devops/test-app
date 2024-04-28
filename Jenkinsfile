pipeline {
    agent any
    
    environment {
        // Define environment variables
        APP_NAME = 'myquiz-app'
        DOCKERFILE_PATH = 'Dockerfile'
        QUAY_REPO = 'quizz'
    }
    
    stages {
        
        stage('Checkout') {
           steps {
                
                    echo  "stage 0 done"
                }
        }
            

        
        stage('Build Image') {
            steps {
                
                    echo  "stage 01 done"
                }
            }
        
        
        stage('Push to Quay.io') {
            steps {
               
                    // Log in to Quay.io
                     echo  "stage 2  done"
                    
                    
                    
                }
            }
        
      
    }

    }

