pipeline {
   node {
       checkout scm

       docker.withServer('tcp://ec2-3-8-208-166.eu-west-2.compute.amazonaws.com:4243', 'docker 3') {
           docker.image('docker:dind').withRun('-p 3306:3306') {
               sh 'docker ps'
           }
       }
   }
}
