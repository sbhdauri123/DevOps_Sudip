//jenkinsfile
String credentialid = 'mySP'

try{
  stage('checkout') {
    node {
        clearWs()
        checkout scm      
    }    
  }

  stage('init') {
    node {
        sh 'terraform init'
    }
  }
}
 
catch (org.jenkinsci.plugins.workflow.steps.FlowInterruptedException flowError) {
    currentBuild.result ='ABORTED'
  }
