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
          def mvnhome = tool name: 'maven', type: 'maven'

          sh "${mvnhome}/bin/mvn install"
        }
      }
    }
  }
}