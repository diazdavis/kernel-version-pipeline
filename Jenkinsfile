
node(){
    stage('calling ./kernel-version.sh') {
        sh script: 'pwd'
        sh  script: ' sh kernel-version.sh'
        sh script: 'sh chmod ugo+rwx kernel-version.sh'
    }
}
