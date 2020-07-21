node {

  checkout scm

  stage('Build image') {
    /* This builds the actual image; synonymous to
     * docker build on the command line */

     bat 'docker build -t ma378056/my-image:latest . '  
  }


 stage('Push image') {
        withDockerRegistry([ credentialsId: "Dockerhub", url: "" ]) {
        bat "docker push ma378056/my-image:latest"
        }
      }
}