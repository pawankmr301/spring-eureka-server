FROM pawankmr301/alpine-eia:latest
RUN wget -c http://192.168.99.101:8081/repository/testrepo/spring-eureka-server-0.0.1-SNAPSHOT.jar -O /spring-eureka-server.jar
CMD ["/opt/jdk1.8.0_201/bin/java", "-jar", "/spring-eureka-server.jar"]