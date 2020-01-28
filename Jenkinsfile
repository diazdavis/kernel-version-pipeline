
#!groovy
/*
 * get kernel version of system to a file
 */
pipeline {
    /* Pin to slaves */
    stages {
        stage('Checkout') {
            steps {
                deleteDir()
                checkout scm
            }
        }
        stage('Kernel version') {
            steps {
                    sh "sh 'kernelversion.sh'"
                }
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}
