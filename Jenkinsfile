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
                if (!("git log -1")); then sh "echo 'No Jira token'";
                sh "git log -1 |  grep '\'[[0-9]*\']'"
            }
         }
    }
}
