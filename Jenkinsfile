pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Copy the index.html and submit.php files to a build directory
                sh 'mkdir build'
                sh 'cp index.html build/'
                sh 'cp submit.php build/'
            }
        }
        
        stage('Deploy') {
            steps {
                // Build the Docker image and deploy the files using Nginx
                script {
                    def imageName = "my-web-app:${env.BUILD_ID}"
                    def containerName = "my-web-app-${env.BUILD_ID}"
                    
                    // Build the Docker image
                    sh "docker build -t ${imageName} ."
                    
                    // Stop and remove any existing container with the same name
                    sh "docker stop ${containerName} || true"
                    sh "docker rm ${containerName} || true"
                    
                    // Run a new container with the built image
                    sh "docker run -d --name ${containerName} -p 8080:80 ${imageName}"
                }
            }
        }
    }
}
