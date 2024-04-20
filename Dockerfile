FROM openjdk:8
EXPOSE 8989
WORKDIR app
ADD target/cicd-jenkins-kubernetes-0.0.1-SNAPSHOT.jar app/cicd-jenkins-kubernetes.jar
COPY cron-job.yaml app/cron-job.yaml
ENTRYPOINT ["java" , "-jar" , "app/cicd-jenkins-kubernetes.jar"]