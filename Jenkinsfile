pipeline{
    agent any
    tools{
        maven 'Maven'
    }
    stages
    {
    stage("code checkout")
    {
        steps{
          echo "hello"
        }
    }
    stage("code build")
    {
        steps{
          bat 'mvn clean'
        }
    }
    stage("code test")
    {
        steps{
          bat 'mvn test'
        }
    }
    }
    post{
        always{
            bat "echo always"
        }
        success{
            bat "echo success"
        }
        failure{
            bat "echo failure"
        }
    }
   }
