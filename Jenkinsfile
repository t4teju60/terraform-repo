pipeline {
    agent {
       node {
          label 'master'
       }
    }
    stages {
       stage('git clone') {
           steps {
              checkout scm
             }
        }
       stage('terraform init') {
           steps {
              //sh '/home/ec2-user/terraform init ./jenkins'
              sh 'terraform -v'
             }
        }
    }
}    