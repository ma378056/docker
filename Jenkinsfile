node {

  checkout scm

  stage('Build image') {
    def customImage = docker.build("my-image:latest")
  }

  stage('Push image') {
    docker.withRegistry('','Dockerhub') {
      customImage.push()
    }
  }

}