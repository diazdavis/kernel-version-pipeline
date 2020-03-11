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
        choice(name: 'CHOICES', choices: ['plan', 'apply'], description: 'Always select plan before apply')
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
                            script{
                                if (params.CHOICES == 'plan'){
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
