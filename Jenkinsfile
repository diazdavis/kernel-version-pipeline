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
        stage('Getting Jira ticket from git log){
              step{
                if (sh "git log -1 | grep '\\[[0-9]*\\]'", returnStatus: true){
                    sh "echo Done"
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
