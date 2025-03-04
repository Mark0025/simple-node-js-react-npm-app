pipeline {
    agent {
        docker {
            image 'node:20.11.1-alpine' // Using Alpine for a smaller image
            args '-p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock'
            registryUrl 'https://registry.hub.docker.com'
            registryCredentialsId ''  // Using public image, no credentials needed
        }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
