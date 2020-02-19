//jenkinsfile
String credentialid = 'mySP'

try{
  stage('checkout') {
    node {
        cleanWs()
        checkout scm      
    }    
  }
}
 
catch (org.jenkinsci.plugins.workflow.steps.FlowInterruptedException flowError) {
    currentBuild.result ='ABORTED'
  }
