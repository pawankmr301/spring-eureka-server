FROM openjdk:8-jre-alpine
RUN apk add -U curl tar gzip bash git wget
RUN wget -c http://34.231.201.41:8081/repository/testrepo/spring-eureka-server-0.0.1-SNAPSHOT.jar -O /spring-eureka-server.jar
#CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/spring-eureka-server.jar"]
CMD ["/usr/bin/java", "-jar", "/spring-eureka-server.jar"]
