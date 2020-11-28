def gvBuild
def gvTest
def gvPackage
def gvDeploy

pipeline{
    agent any

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

        stage("Build"){
            steps{
                echo gvBuild.buildProject()
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
