pipeline {
  agent any
  stages {
        stage('Building image') {
      steps{
        script {
          docker.withRegistry( 'https://hub.docker.com/','Dockerhub')
          def dockerImage = docker.build("my-image:${env.BUILD_ID}")      
          }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
           
            dockerImage.push()
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

