pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from GitHub
                git 'https://github.com/chiheb-devops/test-app.git'
            }
        }
        
        stage('Run Ansible Playbook') {
            steps {
                // Run Ansible playbook
                ansiblePlaybook(
                    playbook: '/home/chiheb/myApp/automate-deployment.yaml',
                    inventory: 'localhost'
                    
                )
            }
        }
    }

    triggers {
        // Trigger the pipeline whenever there's a commit to GitHub
        githubPush()
    }
}
