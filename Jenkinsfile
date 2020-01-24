pipeline {
   agent { 
//      docker { 
//         image 'docker:dind'
//         args '--privileged -u root'
//      }
//         label 'noama-jenkins-agent-dind'
      dockerfile {
//        args '--privileged -u root'
//        args '-v /var/run/docker.sock:/var/run/docker.sock --group-add docker'
          args '-v /var/run/docker.sock:/var/run/docker.sock'
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
