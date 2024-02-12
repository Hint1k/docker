FROM openjdk:17.0.2-jdk-slim-buster
ENV PORT 8080
EXPOSE 8080
ARG JAR_FILE=/target/docker-0.0.1-SNAPSHOT.war
COPY ${JAR_FILE} docker-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/docker-0.0.1-SNAPSHOT.war"]