pipeline {
agent any
stages {
stage ("SCM"){
steps {git 'https://github.com/Netha1999/final.git'}
}
stage ("Build"){
steps {
		sh 'mvn clean'
		sh 'mvn install' }
}
stage ("Docker Image build") {
steps {
	script {
	  app = docker.build("netha0416/0416")
          app.inside {
              sh 'echo $(curl localhost:8080)'
}
}
}
}
stage("Push Docker Image") {
 
steps {
  script {
    docker.withRegistry('https://registry.hub.docker.com', 'docker') {
       app.push("${env.BUILD_NUMBER}")
       app.push("latest")
    }}}}}}
