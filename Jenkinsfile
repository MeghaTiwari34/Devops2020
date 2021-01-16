pipeline {
    agent any
    tools {
      maven "Maven"
    }
    stages {
      stage("code checkout") {
        steps {
          checkout scm
        }
      }
      stage("code build") {
        steps {
          bat "mvn install"
        }
      }
      stage("code test") {
        steps {
          bat "mvn test"
        }
      }
      stage("Sonar Analysis") {
        steps {
          withSonarQubeEnv("Test_Sonar") {
            bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar"
          }
        }
      }
      stage("Upload to artifactory") {
        steps {
          rtMavenDeployer (
            id: "deployer",
            serverId: "0193913913@artifactory",
            releaseRepo: "megha.devopsnagp2020",
            snapshotRepo: "megha.devopsnagp2020"
          )
          rtMavenRun (
            pom: "pom.xml",
            goals: "clean install",
            deployerId: "deployer"
          )
          rtPublishBuildInfo (
            serverId: "0193913913@artifactory"
          )
        }
      }
        
        stage("Build Image")
        {
            steps
            {
                bat "docker build -t myfirstimage:${BUILD_NUMBER} ." 
            }
        }
        stage("Docker Deployment")
        {
            steps
            {
                bat "docker run --name myfirstcontainer -d -p 5040:8081 myfirstimage:${BUILD_NUMBER}"
            }
        }
    }

    post {

 


      always {

 


        bat "echo always"

 


      }

 


      success {

 


        bat "echo success"

 


      }

 


      failure {

 


        bat "echo failure"

 


      }

 


    }

 


  }
