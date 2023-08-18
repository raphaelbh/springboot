FROM openjdk:latest

WORKDIR /application

COPY . /application

RUN ./gradlew clean build

#ENV SPRING_PROFILES_ACTIVE=prod
CMD ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]