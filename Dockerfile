FROM openjdk:17

COPY . .

RUN microdnf install findutils

RUN ./gradlew clean build

#ENV SPRING_PROFILES_ACTIVE=prod

EXPOSE 80
CMD ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]