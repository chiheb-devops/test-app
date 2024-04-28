pipeline {
    agent any
    
    environment {
        // Define environment variables
        APP_NAME = 'myquiz-app'
        DOCKERFILE_PATH = 'Dockerfile'
        QUAY_REPO = 'quizz'
    }
    
    stages {
        
            
                 stages {
        stage('Checkout') {
            // Checkout your source code
            checkout scm
        }
            }

        
        stage('Build Image') {
            steps {
                script {
                    // Build the Docker image using Podman
                    echo  "stage done"
                }
            }
        }
        
        stage('Push to Quay.io') {
            steps {
               
                    // Log in to Quay.io
                     echo  "stage 2  done"
                    
                    
                    // Tag the image for Quay.io
                    sh "podman tag ${APP_NAME} quay.io/${QUAY_REPO}/${APP_NAME}"
                    
                    // Push the image to Quay.io
                     echo  "stage 3 done"
                }
            }
        
         stage('Deploy with Ansible') {
        // Run Ansible playbook
        echo  "stage4 done"
    }
}
    }

