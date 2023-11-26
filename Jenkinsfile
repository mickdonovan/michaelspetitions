pipeline {
    agent any

    stages{
        stage('WhichJava') {
            steps {
                sh "java --version"
            }
        }
        stage("GetProject"){
            steps {
                git "https://github.com/mickdonovan/michaelspetitions.git"
            }
        }

        stage("Build"){
            steps {
                sh "mvn clean:clean"

                sh "mvn dependency:copy-dependencies"

                sh "mvn compiler:compile"

                sh "mvn war:war"
            }
        }

        stage("Test"){
              steps {
                   sh "echo Executing tests here..."
              }
        }

        //stage("Execute") {
            //steps {
                //sh "mvn  spring-boiot:run -Dsprint-boot.run.jvmArguments=' -Dserver-port=9090'"
               //}
        //}
    }

    post{
          success {
                archiveArtifacts allowEmptyArchive: true, artifacts: 'target/michaelspetitions.war'

                sshagent(['my-tomcat']) {
                          sh """
                          scp -o StrictHostKeyChecking=no target/michaelspetitions.war
                          ubuntu@172.17.0.1:/opt/tomcat/webapps/
                          ssh ubuntu@172.17.0.1 /opt/tomcat/bin/shutdown.sh
                          ssh ubuntu@172.17.0.1 /opt/tomcat/bin/startup.sh
                           ""
                          }
          }
    }
}