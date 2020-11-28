def gv

pipeline{
    agent any

    stages{

        stage("Initialize") {
            steps{
                script {
                    gv = load "build.groovy"
                }
            }
        }

        stage("Build"){
            steps{
                echo gv.buildProject()
            }
        }

        stage("Test"){
            steps{
                echo "Test Stage"
            }
        }

        stage("Package"){
            steps{
                echo "Package Stage"
            }
        }

        stage("Deploy"){
            steps{
                echo "Test Stage"
            }
        }
    }
}
