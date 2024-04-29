pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from GitHub
                git 'https://github.com/chiheb-devops/test-app.git'
            }
        }

            stage('Print Workspace') {
            steps {
                sh 'echo "Workspace: ${WORKSPACE}"'
            }
        }
        
        stage('Run Ansible Playbook') {
            steps {
                // Run Ansible playbook
                ansiblePlaybook(
                    playbook: '/var/lib/jenkins/workspace/my-pipeline/automate-deployment.yaml',
                    inventory: 'localhost',
                    credentialsId: 'ansible-cred'
                    
                )
            }
        }
    }

    triggers {
        // Trigger the pipeline whenever there's a commit to GitHub
        githubPush()
    }
}
