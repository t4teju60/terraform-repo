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
      }
   }
 
 stage(‘Provisioninfrastructure’) {
 
    steps {
         sh ‘terraform — version’
         sh ‘terraform init’     
     }
  }
 }
}