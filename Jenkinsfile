pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Installing dependencies..."
                nodejs('Node-16.20.1') {
                    sh 'yarn install'
                }
            }
        }
    }
}
