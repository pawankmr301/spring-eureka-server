FROM 13.232.182.42:8082/alpine-eia:latest
ADD target/spring-eureka-server-0.0.1-SNAPSHOT.jar /spring-eureka-server.jar
CMD ["/opt/jdk1.8.0_201/bin/java", "-jar", "/spring-eureka-server.jar"]