pipeline {
    agent {
       node {
          label 'master'
       }
    }
    stages {
       stage('git clone') {
           steps {
              sh 'https://github.com/t4teju60/terraform-repo.git'
             }
        }
       stage('terraform init') {
           steps {
              sh '/home/ec2-user/terraform init ./jenkins'
             }
        }
    }
}    