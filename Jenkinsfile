pipeline 
{
    agent any
    environment {
        SLACK_CHANNEL = '#all-devops-new'         // Replace with your Slack channel
        SLACK_CREDENTIAL_ID = 'Ru3O8Ji6wiapfN3bRIubdFVL'     // Set your Slack credential ID
    tools 
    {
        maven "maven-3.9.9"
    }
    stages
    {
        stage('git checkout')
        {
            steps
            {
            git branch: 'master', credentialsId: '39dff5bc-4359-42a7-9cab-bc6cb9ab0abb', url: 'https://github.com/Narenderhubgit/maven-web-app-project-kk-funda.git'
            }
         }
        stage('compile')
        {
            steps
            {
             sh "mvn clean compile"
            }
        }
        stage('build')
        {
           steps
            {
             sh "mvn clean package"
            }
        }
        stage('SQ report')
        {
           steps
            {
             sh "mvn clean sonar:sonar"
            }
        }
        stage('deploy')
        {
           steps
            {
            sh "mvn clean deploy"
            }
        }
        stage('Deploy App')
        {
          steps
           {
         echo "Deploying WAR file using curl..."

        sh """
            curl -u admin:tomcat@123 \
            --upload-file /var/lib/jenkins/workspace/jio-delclarative-PL/target/maven-web-application.war \
            "http://3.91.82.216:8080/manager/text/deploy?path=/maven-web-application&update=true"
        """
               post {
        success {
            slackSend (
                channel: env.SLACK_CHANNEL,
                color: '#36a64f',
                message: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' completed successfully.",
                tokenCredentialId: env.SLACK_CREDENTIAL_ID
            )
        }
        failure {
            slackSend (
                channel: env.SLACK_CHANNEL,
                color: '#FF0000',
                message: "FAILURE: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' failed. Check console output.",
                tokenCredentialId: env.SLACK_CREDENTIAL_ID
        }
      }
     }
}
