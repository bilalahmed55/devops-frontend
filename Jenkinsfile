pipeline {
  agent any
  environment {
		registryCredential = 'dockerhub' 
	}
  stages {
		stage('Build') {
				steps {
					
						sh 'docker build -t bilalahmed55/frontend .'
					
				}
			}

		stage('Publish') {
				steps{
					script {
						docker.withRegistry( '', registryCredential ) {
							sh 'docker push bilalahmed55/frontend:latest'
						}
					}
				}
  			}
  		}
}