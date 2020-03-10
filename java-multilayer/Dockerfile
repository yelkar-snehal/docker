From gradle:jdk8 AS dipesh
RUN mkdir -p /app/code
WORKDIR /app/code
COPY ./code /app/code
RUN gradle clean build

# Second layer

FROM openjdk:8-jre-alpine
RUN mkdir -p /app/build
WORKDIR /app/build
COPY --from=dipesh /app/code/build/libs/*.jar /app/build
EXPOSE 5050
ENTRYPOINT ["java","-jar","/app/build/code-0.0.1-SNAPSHOT.jar"]
