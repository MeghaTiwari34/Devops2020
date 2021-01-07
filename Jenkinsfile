pipeline{
    agent any
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
          echo "build"
        }
    }
    stage("code test")
    {
        steps{
          echo "test"
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
