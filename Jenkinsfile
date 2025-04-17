pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo "Cloning GitHub Repo..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("java-hello")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run()
                }
            }
        }
    }
}
