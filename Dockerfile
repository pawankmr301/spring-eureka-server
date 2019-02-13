FROM openjdk:8-jre-alpine
COPY target/spring-boot-*.war /app.war
COPY target/spring-eureka-server-*.jar /spring-eureka-server.jar
#CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/spring-eureka-server.jar"]
CMD ["/usr/bin/java", "-jar", "/spring-eureka-server.jar"]
