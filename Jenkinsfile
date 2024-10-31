pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Java Program') {
            steps {
                sh 'javac Main.java'
            }
        }
        stage('Run Java Program') {
            steps {
                sh 'java Main'
            }
        }
    }
}
