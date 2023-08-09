FROM eclipse-temurin:17-jdk-alpine as builder

WORKDIR /app

COPY .mvn .mvn
COPY src src
COPY pom.xml mvnw ./

RUN ./mvnw install

FROM eclipse-temurin:17-jdk-alpine

COPY --from=builder /app/target/*.jar demo.jar

ENTRYPOINT ["java", "-jar", "demo.jar"]
