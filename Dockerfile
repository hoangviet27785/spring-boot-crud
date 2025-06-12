FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY . /app

RUN ./mvnw clean package

CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
