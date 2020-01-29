#!groovy
/*
 * get kernel version of system to a file
 */
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Kernel version') {
            steps {
                    sh "sh 'kernelversion.sh'"
                }
        }
        stage('check for jira ticket') {
            steps {
                    result = sh (script: "git log -1 |  grep '\'[[0-9]*\']"", returnStatus: true) 
                      if (result) {
                        echo "Done."
                      } else {
                        echo "no tickets"
                      }
            }
         }
    }
}
