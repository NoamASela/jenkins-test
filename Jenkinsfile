pipeline {
   agent { dockerfile true }
   stages {
      stage ('checkout ') {
          steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], 
            doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], 
            userRemoteConfigs: [[url: 'https://github.com/dockersamples/example-voting-app.git']]])
        }
      }
      stage('Hello') {
         steps {
            sh 'whoami'
            echo 'Hello World'
            sh 'ls /tmp/'
            input ("")
            sh 'docker-compose up'
         }
      }
   }
}
