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
                if (sh (script: "git log -1 | grep "\[[0-9]*\]"", returnStatus: true)){
                    sh "cat "Ticket number" grep "\[[0-9]*\]"""
                    }else{
                    sh "echo "ticket number not specified""
            }
        }
        stage('Kernel version') {
            steps {
                    sh "sh 'kernelversion.sh'"
                }
        }
    }
}
