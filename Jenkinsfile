
node()
{
    stage('calling first stage') 
    {
        sh script: 'pwd'
        sh script: 'sh chmod ugo+rwx kernel-version.sh'
        sh script: 'sh kernel-version.sh'
    }
}
