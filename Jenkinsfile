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
                result = sh (script: "git log -1 | grep '\\[[0-9]*\\]'", returnStatus: true) 
                      if (result != 0) {
                        echo "performing build..."
                      } else {
                        echo "not running..."
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
