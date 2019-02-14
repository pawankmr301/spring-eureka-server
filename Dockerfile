FROM openjdk:8-jre-alpine
RUN apk add -U curl tar gzip bash git
COPY target/spring-boot-*.war /app.war
COPY target/spring-eureka-server-*.jar /spring-eureka-server.jar
#CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/spring-eureka-server.jar"]
CMD ["/usr/bin/java", "-jar", "/spring-eureka-server.jar"]
