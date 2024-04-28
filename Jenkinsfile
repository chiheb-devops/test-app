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
            // Checkout your source code
            checkout scm
        }
            

        
        stage('Build Image') {
            steps {
                
                    echo  "stage done"
                }
            }
        
        
        stage('Push to Quay.io') {
            steps {
               
                    // Log in to Quay.io
                     echo  "stage 2  done"
                    
                    
                    
                }
            }
        
         stage('Deploy with Ansible') {
        // Run Ansible playbook
        echo  "stage4 done"
    }
}
    }

