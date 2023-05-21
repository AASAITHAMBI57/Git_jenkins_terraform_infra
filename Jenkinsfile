pipeline {
    agent any
    
    tools {
        terraform 'terraform-5'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'master', credentialsId: 'git-pass', url: 'https://github.com/BalarajuGolla/CICD-pipeline'
            }
        }
        
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
