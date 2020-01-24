pipeline {
   agent { 
         //label 'agent-label-aws'
      dockerfile {
         args '-v /var/run/docker.sock:/var/run/docker.sock --group-add docker'
      }
   }
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
            echo 'Hello World'
            input ''
            sh 'ls /tmp/'
            sh 'docker-compose up'
         }
      }
   }
}
