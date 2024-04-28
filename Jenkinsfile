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
                    sh "podman build -t ${APP_NAME} . "
                }
            }
        }
        
        stage('Push to Quay.io') {
            steps {
                script {
                    // Log in to Quay.io
                    withCredentials([usernamePassword(credentialsId: 'quay-credential', usernameVariable: 'QUAY_USERNAME', passwordVariable: 'QUAY_PASSWORD')]) {
                        sh "podman login -u ${QUAY_USERNAME} -p ${QUAY_PASSWORD} quay.io"
                    }
                    
                    // Tag the image for Quay.io
                    sh "podman tag ${APP_NAME} quay.io/${QUAY_REPO}/${APP_NAME}"
                    
                    // Push the image to Quay.io
                    sh "podman push quay.io/${QUAY_REPO}/${APP_NAME}"
                }
            }
        }
         stage('Deploy with Ansible') {
        // Run Ansible playbook
        sh 'ansible-playbook /home/chiheb/ansible-projects/deploy.yaml'
    }
}
