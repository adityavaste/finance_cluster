pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('print') {
            steps {
                sh 'echo "cluster created successfully"'
            }
        }
    }
}