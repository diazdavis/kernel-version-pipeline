

node(){
stage ( 'first' ) {
    sh  'ls'
}
stage ( 'second' ) {
    sh  'pwd'
}
}


node(){
    stage('Creating File') {
       sh ' ./kernel-version.sh'
       echo 'hello'
    }
}
