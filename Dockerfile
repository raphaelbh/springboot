FROM adoptopenjdk:17-jdk-hotspot AS build
WORKDIR /app
COPY . .
RUN ./gradlew clean build

FROM adoptopenjdk:17-jre-hotspot
WORKDIR /app
COPY --from=build /app/build/libs/demo-0.0.1-SNAPSHOT.jar ./app.jar

EXPOSE 80
CMD ["java", "-jar", "app.jar"]