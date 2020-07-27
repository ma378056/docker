pipeline {
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/ma378056/docker.git'
      }
    }
    stage('Build-Package') {
      steps{
        script {
          def mvnhome = tool name: 'maven-3', type: 'maven'

          sh "${mvnhome}/bin/mvn package"
        }
      }
    }
  }
}