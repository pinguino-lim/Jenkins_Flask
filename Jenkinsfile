pipeline {
    agent {
        docker {
            image 'python:buster'
            args '-p 5000:5000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'pip install --no-cache-dir -r requirements.txt'
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/deploy.sh'
                input message: 'Has acabado de ver el server? (Click "Proceed" para continuar)'
                sh './scripts/kill.sh'
            }
        }
    }
}
