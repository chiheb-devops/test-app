pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from GitHub
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-credentials', url: 'https://github.com/chiheb-devops/test-app.git']])
            }
        }

                   stage('where') {
            steps {
                // Checkout the source code from GitHub
                sh 'pwd'
            }
        }
        
        stage('Run Ansible Playbook') {
            steps {
                // Run Ansible playbook
                ansiblePlaybook(
                    playbook: '/test/test.yaml',
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
