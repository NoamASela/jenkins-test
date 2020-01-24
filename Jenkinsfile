pipeline {
   agent {
      node {
         docker.withServer('tcp://ec2-3-8-208-166.eu-west-2.compute.amazonaws.com:4243', 'docker 3') {
            docker.image('httpd').withRun('-p 8080:80') {c ->
               sh "curl -i http://${hostIp(c)}:8080/"
            }
         }
  //        docker.withServer('tcp://ec2-3-8-208-166.eu-west-2.compute.amazonaws.com:4243', 'docker 3') {
 //             docker.image('docker:dind').withRun('-p 3306:3306') {
     //         }
    //      }
      }
   }
}
