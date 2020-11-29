def gvBuild
def gvTest
def gvPackage
def gvDeploy

pipeline{
    agent any

    environment {
        DOTNET = 'C:\\Program Files (x86)\\dotnet\\'
        GIT = 'https://github.com/SamG2AWS/weather-app.git'
    }

    stages{

        stage("Initialize") {
            steps{
                script {
                    gvBuild = load "build.groovy"
                    gvTest = load "test.groovy"
                    gvPackage = load "package.groovy"
                    gvDeploy = load "deploy.groovy"
                }
            }
        }

        stage("Checkout"){
            steps {
                git branch: 'main', url: "${GIT}"
            }
        }


        stage("Build"){
            steps{
                bat "dotnet restore weather-app.sln"
            }
        }

        stage("Test"){
            steps{
                echo gvTest.testProject()
            }
        }

        stage("Package"){
            steps{
                echo gvPackage.packageProject()
            }
        }

        stage("Deploy"){
            steps{
                echo gvDeploy.deployProject()
            }
        }
    }
}
