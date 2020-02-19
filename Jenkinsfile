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
        withCredentials([azureServicePrincipal(credentialsId: 'mySP',
                                    subscriptionIdVariable: 'subscriptionId',
                                    clientIdVariable: 'clientId',
                                    clientSecretVariable: 'certificateId',
                                    tenantIdVariable: 'tenant')]) {
    sh 'az login --service-principal -u $clientId -p $certificateId -t $tenant'
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
