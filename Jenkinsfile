pipeline {
    agent any
    
    tools {
        terraform 'terraform-5'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'master', credentialsId: 'git-pass', url: 'https://github.com/AASAITHAMBI57/Git_jenkins_terraform_infra.git'
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
