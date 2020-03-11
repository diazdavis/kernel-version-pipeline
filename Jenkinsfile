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
        choice(name: 'CHOICES', choices: ['plan', 'apply'], defaultValue: 'plan', description: 'Always select plan before apply')
    }

    options {
        disableConcurrentBuilds()
        skipStagesAfterUnstable()
        timestamps()
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
       
        stage('${params.CHOICES} terraform') {
                    steps {
                            dir("/terraform/jenkins-infra"){
                                sh "terraform init"
                                script{
                                    if (params.CHOICES == 'plan'){
                                        sh "echo terraform 'params.CHOICES' in action"
                                        sh "ls -l"
                                        // sh "terraform apply -auto-approve"
                                    }
                                    else{
                                        sh "echo terraform 'params.CHOICES' in action"
                                        // sh "terraform plan"
                                    }
                                }
                            }
                    }
                }
    }

}
