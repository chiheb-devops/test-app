pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from GitHub
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-credentials', url: 'https://github.com/chiheb-devops/test-app.git']])
            }
        }

                   stage('build') {
            steps {
                // Checkout the source code from GitHub
                sh 'cd ~/test-app'
                sh 'podman build -t front .'
            }
        }
        stage('Push Image to Quay.io') {
            steps {
                script {
                    def username = 'med_chiheb' 
                    def password = credentialsId('quay-io-credentials-id', 'password') 
                    withCredentials([usernamePassword(credentialsId: 'quay-io-credentials-id', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh "podman login -u $USERNAME -p $PASSWORD quay.io"
                        sh 'podman push quay.io/font:pfe'
                    }
                }
            }
        }
        stage('Redeploy to Kubernetes with kubectl') {
            steps {
                sh 'kubectl apply -f deploy.yaml'
            }
        }
    
    triggers {
        // Trigger the pipeline whenever there's a commit to GitHub
        githubPush()
    }
}
}
