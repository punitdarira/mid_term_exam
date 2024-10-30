pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install GCC') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y g++'
            }
        }
        stage('Build C++ Program') {
            steps {
                sh 'g++ -o main Main.cpp'
            }
        }
        stage('Run C++ Program') {
            steps {
                sh './main'
            }
        }
        stage('Verify Output') {
            steps {
                script {
                    def output = sh(script: './main', returnStdout: true).trim()
                    if (output != 'Hello, World!') {
                        error 'Test failed'
                    } else {
                        echo 'Test passed'
                    }
                }
            }
        }
    }
}
