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
                script {
                    gvBuild.buildProject()
                }
            }
        }

        stage("Test"){
            steps{
                bat "dotnet test WeatherApiTests\\WeatherApiTests.csproj"
            }
        }

        stage("Package"){
            steps{
                bat "dotnet publish WeatherApi\\WeatherApi.csproj --configuration Release"
            }
        }

        stage("Deploy"){
            steps{
                powershell 'Copy-Item -Path "WeatherApi\\bin\\Release\\net5.0\\publish\\*" -Destination "D:\\Jenkins\\WeatherApi" -Recurse -Force'
            }
        }
    }
}
