pipeline {
  agent any
  stages
    {
    stage('Git checkout') {
      steps {
          git changelog: false, poll: false, url: 'https://github.com/Anji399/cal_devops.git'
      }
    }
    stage('package') {
      steps {
          sh 'mvn package'
      }    
    }
    stage('Build docker image') {
      steps {
        sh 'docker build -t mvpar/cal_devops:1.1.5 .'
      }
    }
    stage('push image') {
      steps {
        withCredentials([string(credentialsId: 'passwd', variable: 'dock')]) {
           sh "docker login -u mvpar -p ${dock}"
        }
        sh  'docker push mvpar/cal_devops:1.1.5'
      } 
    }
  } 
}