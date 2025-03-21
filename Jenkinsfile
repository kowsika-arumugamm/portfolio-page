pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/kowsika-arumugamm/portfolio-page.git'
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
                sh 'docker run -d -p 8080:80 --name portfolio-container portfolio-page'
            }
        }
    }
}
