pipeline {
    agent any

    parameters {
        password (name: 'AWS_ACCESS_KEY_ID')
        password (name: 'AWS_SECRET_ACCESS_KEY')
  }    
    
    environment {
        AWS_ACCESS_KEY_ID = "${params.AWS_ACCESS_KEY_ID}"
        AWS_SECRET_ACCESS_KEY = "${params.AWS_SECRET_ACCESS_KEY}"
        TF_IN_AUTOMATION      = '1'
    }

    stages {

        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('Set Terraform path') {
            steps {
               script { 
                def tfHome = tool name: ‘Terraform’
                env.PATH = “${tfHome}:${env.PATH}”
            }
             sh ‘terraform — version’
          }
        }        
              
        stage('Plan') {
            steps {
                sh 'terraform'
            }
        }

        stage('Apply') {
            steps {
                sh "terraform apply -input=false tfplan"
            }
        }
    }
}