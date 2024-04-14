FROM openjdk:8
EXPOSE 8989
ADD target/cicd-jenkins-kubernetes-0.0.1-SNAPSHOT.jar cicd-jenkins-kubernetes.jar
ENTRYPOINT ["java" , "-jar" , "/cicd-jenkins-kubernetes.jar"]