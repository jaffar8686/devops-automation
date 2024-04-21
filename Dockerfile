FROM openjdk:17
EXPOSE 8989
ADD target/cicd-jenkins-kubernetes-0.0.1-SNAPSHOT.jar cicd-jenkins-kubernetes.jar
ADD cron-job.yaml cron-job.yaml
ADD pom.xml pom.xml
RUN ls
ENTRYPOINT ["java" , "-jar" , "cicd-jenkins-kubernetes.jar"]
