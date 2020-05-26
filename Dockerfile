FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/demo-rest-0.0.1-SNAPSHOT.jar /app/
RUN addgroup -S spring && adduser -S spring -G spring
RUN chown  spring:spring /app/demo-rest-0.0.1-SNAPSHOT.jar
USER spring:spring

ENTRYPOINT ["java","-jar","/app/demo-rest-0.0.1-SNAPSHOT.jar"]