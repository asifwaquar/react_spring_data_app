FROM openjdk:11.0.4-jdk
EXPOSE 8080
WORKDIR /app
COPY . /app
RUN ./mvnw clean verify
ENTRYPOINT ["java","-jar","/app/target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar"]

