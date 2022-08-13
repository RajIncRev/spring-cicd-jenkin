pipeline{
	agent any
	stages{
		stage("Maven Build"){
			steps{
				 
				 echo "Build application"
				 bat "mvnw  -Dmaven.test.skip=true clean compile package"	
			}
		}
		stage("Docker Build"){
			steps{
				 
				 echo "DOcker Build App"
				 bat " docker build --build-arg JAR_FILE=spring-cicd-jenkin-0.0.1-SNAPSHOT.jar --build-arg CONTAINER_VERSION=0.0.1 -t raj1307/spring-cicd-jenkin:0.0.1 ."	
			}
		}
	}
}