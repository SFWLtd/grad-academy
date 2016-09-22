FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD build/libs/ExampleAPI-1.0-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]