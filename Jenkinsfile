pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_IN_AUTOMATION      = '1'
    }

    stages {

        stage('checkout') {
            steps {
                git branch: ‘master’, url: ‘git@https://github.com/t4teju60/terraform-repo.git’
            }
        }      
        stage('Plan') {
            steps {
                sh 'terraform init -input=false'
            }
        }

        stage('Apply') {
            steps {
                sh "terraform apply -input=false tfplan"
            }
        }
    }
}