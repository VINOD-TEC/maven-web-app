pipeline {
    agent any
    
    tools{
        maven 'Maven-3.9.12'
    }
    stages {
        stage('clone') {
            steps {
              git 'https://github.com/VINOD-TEC/maven-web-app.git'
            }
        }
        stage('build'){
            steps{
                 sh 'mvn clean package'
            }
        }
        stage('docker image'){
            steps {
                sh 'docker build -t vinodit/mavenwebapp .'
            }
        }
        stage('k8s deploy'){
            steps{
               sh 'kubectl apply -f k8s-deploy.yml'
            }
        }
    }
}
