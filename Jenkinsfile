//jenkinsfile
String credentialid = 'mySP'

try{
  stage('checkout') {
    node {
        cleanWs()
        checkout scm      
    }    
  }
  
  stage('init') {
    node {
       bat 'terraform init' 
    }    
  } 
  
  stage('plan') {
    node {
         withCredentials([azureServicePrincipal('credentialid')]) {
              bat 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
          }
      
         bat 'terraform plan'
    
    }
 }
   stage('apply') {
    node {
       bat 'terraform apply -auto-approve' 
    }    
  } 
  
  
}
 
catch (org.jenkinsci.plugins.workflow.steps.FlowInterruptedException flowError) {
    currentBuild.result ='ABORTED'
  }
