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
                script {
                    result = sh "echo git log -1 | grep '\'[[0-9]*\']'"
                    sh "echo $result"
                }
            }
         }
    }
}
