pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/kowsika-arumugamm/portfolio-page.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t portfolio-page .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop portfolio-container || true'
                sh 'docker rm portfolio-container || true'
            }
        }

        stage('Run New Container') {
            steps {
                // Changed port from 8080 to 5001
                sh 'docker run -d -p 5001:80 --name portfolio-container portfolio-page'
            }
        }
    }
}
