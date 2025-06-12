# Dùng base image có sẵn Java 21
FROM eclipse-temurin:21-jdk

# Cài Maven nếu chưa dùng Maven Wrapper (./mvnw)
# Nếu có ./mvnw, không cần bước này

WORKDIR /app
COPY . /app

# Nếu dùng Maven Wrapper
RUN chmod +x ./mvnw && ./mvnw clean package -DskipTests

# Nếu bạn dùng Maven (không dùng mvnw) thì:
# RUN apt-get update && apt-get install -y maven && mvn clean package -DskipTests

# Chạy file JAR
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
