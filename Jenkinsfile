pipeline {
    agent {
       node {
          label 'master'
       }
    }
    stages {
       stage('git clone') {
           steps {
              scm checkout
             }
        }
       stage('terraform init') {
           steps {
              sh '/home/ec2-user/terraform init ./jenkins'
             }
        }
    }
}    