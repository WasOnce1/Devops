pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/WasOnce1/Devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                  docker build -t jenkins-testapp:${BUILD_NUMBER} .
                '''
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
		  docker run -d --name webapp -p 8001:80 jenkins-testapp:${BUILD_NUMBER}
                '''
            }
        }
    }
}

