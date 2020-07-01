pipeline {
   agent any
 
   stages {
     stage(‘checkout’) {
      steps {
          scm checkout
      }
  }
   stage(‘SetTerraformpath’) {
     steps {
       script {
        def tfHome = tool name: ‘Terraform’
        env.PATH = '${tfHome}:${env.PATH}'
         }
      sh ‘terraform — version’

      }
   }
 
 stage(‘Provisioninfrastructure’) {
 
    steps {
      dir(‘dev’)
       {
         sh ‘terraform init’
      }
 
    }
  }
 }
}