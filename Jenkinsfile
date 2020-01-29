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
                    result = sh "echo git log -1 | grep '\'[[0-9]*\']'"
                    if (result) {
                        echo 'Done'
                    } else {
                        echo 'No ticket'
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
