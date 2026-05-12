FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw -B -DskipTests clean install

EXPOSE 8080

CMD ["./mvnw", "spring-boot:run"]