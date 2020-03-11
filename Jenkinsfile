#!groovy

/*
 * Lambda deployment
 */

pipeline {

    /* Pin to master */
    agent {
        node {
            label 'master'
        }
    }


    parameters {
        password(name: 'AWS_ACCESS_KEY_ID', description: 'Enter AWS Access Key')
        password(name: 'AWS_SECRET_ACCESS_KEY', description: 'Enter AWS Secret Key')
        string(name: 'AWS_DEFAULT_REGION', defaultValue: 'ap-southeast-1', description: 'Enter AWS REGION')
        choice(name: 'CHOICES', choices: ['plan', 'apply'], description: 'Always select plan before apply')
    }

    options {
        disableConcurrentBuilds()
        skipStagesAfterUnstable()
        timestamps()
        ansiColor('xterm')
    }

    stages {

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout') {

            steps {
                deleteDir()
                checkout scm
            }
        }

        stage('AWS Configure') {
            steps {
                    sh "export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}"
                    sh "export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"
                    sh "export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}"
            }
        }

        stage('Clone jenkins terraform') {
            steps {
                    sh "mkdir -p jenkins-infra"
                    sh "git clone git@bitbucket.org:keyvaluesoftwaresystems/infra.git /terraform/jenkins-infra/"
            }
        }


        stage('${params.CHOICES} terraform') {
                    steps {
                            sh "cd '$WORKSPACE/terraform/jenkins-infra'"
                            sh "terraform init"
                            script{
                                if (${params.CHOICES} == plan){
                                    sh "echo terraform ${params.CHOICES} in action"
                                    //sh "terraform apply -auto-approve"
                                }
                                else{
                                    sh "echo terraform ${params.CHOICES} in action"
                                    //sh "terraform plan"
                                }
                            }
                    }
                }
    }

}
