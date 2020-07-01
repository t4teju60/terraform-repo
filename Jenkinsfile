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
              
        stage('Plan') {
            steps {
                sh 'sudo /home/ec2-user/ter/terraform-repo/terraform init'
                
            }
        }
    }
}