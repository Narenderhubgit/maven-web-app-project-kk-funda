pipeline {
    agent any
   /* environment {
        SLACK_CHANNEL = 'all-devops-new'
        SLACK_CREDENTIAL_ID = 'slack3 credentials'  // Avoid spaces if possible
    } */
    tools {
        maven "maven-3.9.9"
    }
    
    options {
        timestamps()
    }

    stages {
        stage('Notify Build Start') {
            steps {
                script {
                    slackSend(
                        channel: env.SLACK_CHANNEL,
                        color: '#439FE0',
                        message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' has started.",
                        tokenCredentialId: env.SLACK_CREDENTIAL_ID
                    )
                }
            }
        }

        stage('git checkout') {
            steps {
                git branch: 'dev',
                    credentialsId: '39dff5bc-4359-42a7-9cab-bc6cb9ab0abb',
                    url: 'https://github.com/Narenderhubgit/maven-web-app-project-kk-funda.git'
                
            }
        }

        stage('compile') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }

      /*  stage('SQ report') {
            steps {
                sh 'mvn sonar:sonar'
            }
        }

        stage('deploy') {
            steps {
                sh 'mvn deploy'
            }
        }

        stage('Deploy App') {
            steps {
                echo "Deploying WAR file using curl..."
                sh """
                    curl -u admin:tomcat@123 \
                    --upload-file target/maven-web-application.war \
                    "http://3.91.82.216:8080/manager/text/deploy?path=/maven-web-application&update=true"
                """
            }
            */
        }
    }

    post {
  success {
    notifyBuild(currentBuild.result)
  }
  failure {
notifyBuild(currentBuild.result)
      }
}
}//pipeline closing


def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#all-devops-new')
}
