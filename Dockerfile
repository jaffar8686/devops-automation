FROM openjdk:8
EXPOSE 8989
WORKDIR /app
RUN ls
ADD target/cicd-jenkins-kubernetes-0.0.1-SNAPSHOT.jar /app/cicd-jenkins-kubernetes.jar
COPY cron-job.yaml /app/cron-job.yaml
RUN ls
ENTRYPOINT ["java" , "-jar" , "/app/cicd-jenkins-kubernetes.jar"]