pipeline {
  environment {
    image_tag = "ma378056/test-image"
    registryCredential = 'Dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/ma378056/docker.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build(image_tag + ":1.0.1")
        }
      }
    }
    stage('Pushing Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}