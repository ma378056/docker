/* pipeline {
  agent any
  stages {
    stage('Deploy Image and push') {
      steps{
        script {
           
        docker.withRegistry('https://hub.docker.com/','Dockerhub') {

        def customImage = docker.build("my-image:latest")

        /* Push the container to the custom Registry */
        customImage.push()
        }
      }
    }

  }
}

} 
*/

node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/','Dockerhub') {

        def customImage = docker.build("my-image:latest}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}