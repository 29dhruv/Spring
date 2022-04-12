pipeline {
    agent {label 'first-node'}
    stages {
        stage('creating the built') {
            steps {
                echo 'delete old jar files'
                sh'''sudo rm -rf spring-boot-with-prometheus-0.1.0.jar
                ls
                ./gradlew build'''
            }
        }
        stage('deployment') {
            steps {
                echo 'deploying my first app'
                sh'''set +e
                sudo lsof -t -i:8080
                sudo lsof -t -i:8080 >> tp.txt && cat tp.txt
                sudo kill -9 $(cat tp.txt)
                sudo java -jar build/libs/spring-boot-with-prometheus-0.1.0.jar > spring-logs.out&
                cat spring-logs.out
                echo Done'''      
            }
        }
        
    }
}
