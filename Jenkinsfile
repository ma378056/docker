node {
    checkout scm

    docker.withRegistry('','Dockerhub') {

        def customImage = docker.build("ma378056/my-image:latest")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}