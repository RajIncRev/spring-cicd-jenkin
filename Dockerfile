FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ARG CONTAINER_VERSION
ADD target/${JAR_FILE} app.jar
ADD version.txt version.txt

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
HEALTHCHECK --interval=3m --start-period=1m --retries=1 CMD curl --insecure --fail https://localhost:8081/api/status || exit 1
CMD ["--spring.config.additional-location=file:/application.properties"]

#Create the version file with container details
RUN echo "Container Version:"$CONTAINER_VERSION >> version.txt
RUN echo "JAR File:"$JAR_FILE >> version.txt

