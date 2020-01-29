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
        stage('check for jira ticket') {
            steps {
                checkout scm
                script {
                    result = sh "cat git log | grep '\'[[0-9]*\']'"
                    if (result) {
                        sh "echo 'Done'"
                    } else {
                        sh "echo 'No ticket'"
                    }
                }
            }
         }
        stage('Kernel version') {
            steps {
                    sh "sh 'kernelversion.sh'"
                }
        }
    }
}
