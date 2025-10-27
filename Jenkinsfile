pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo "Pulling source code from GitHub..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                sh "docker build -t nodejs-app:${BUILD_NUMBER} ."

            }
        }

        stage('Run Container') {
            steps {
                echo "Stopping old container if exists..."
                sh '''
                docker stop nodejs-app-container || true
                docker rm nodejs-app-container || true
                '''

                echo "Running new container..."
                sh 'docker run -d -p 3000:3000 --name nodejs-app-container nodejs-app'
            }
        }

    }
}
