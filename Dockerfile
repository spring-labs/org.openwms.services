FROM java:8-jre
VOLUME library
ADD target/openwms-services.jar app.jar
RUN bash -c 'touch /app.jar'
ENV PORT 8080
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/app.jar"]
