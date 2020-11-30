def gvBuild
def gvTest
def gvPackage
def gvDeploy

pipeline {
    agent any

    environment {
        DOTNET = 'C:\\Program Files (x86)\\dotnet\\'
        GIT = 'https://github.com/SamG2AWS/weather-app.git'
    }

    stages {
        stage('Initialize') {
            steps {
                script {
                    gvBuild = load 'build.groovy'
                    gvTest = load 'test.groovy'
                    gvPackage = load 'package.groovy'
                    gvDeploy = load 'deploy.groovy'
                }
            }
        }

        stage('Checkout') {
            steps {
                git branch: 'main', url: "${GIT}"
            }
        }

        stage('Build') {
            steps {
                script {
                    gvBuild.buildProject()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    gvTest.testProject()
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    gvPackage.packageProject()
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    gvDeploy.deployProject()
                }
            }
        }
    }
}
