
node()
{
     stages {
        stage('Checkout') {
            steps {
                deleteDir()
                checkout scm
            }
        }
        stage('calling first stage') 
        {
            sh script: 'pwd'
            sh script: 'sh kernelversion.sh'
        }
      }
}
