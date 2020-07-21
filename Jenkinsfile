pipeline {
  agent any
  stages {
        stage('Building image') {
      steps{
        script {
          def dockerImage = docker.build("my-image:${env.BUILD_ID}")      
          }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( 'https://hub.docker.com/','Dockerhub') {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
