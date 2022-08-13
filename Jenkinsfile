pipeline{
	agent any
	stages{
		stage("Maven Build"){
			steps{
				 
				 echo "Build application"
				 bat "mvnw  -Dmaven.test.skip=true clean compile package"	
			}
		}
	}
}