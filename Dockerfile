# Usamos la imagen de MVN para el build
# 'mvn clean package' genera el archivo JAR
FROM maven:3.9.6-eclipse-temurin-21 AS build
COPY . .
RUN mvn clean package

#Copiamos el JAR generado en build y marcamos el punto de arranque para la ejecución
FROM openjdk:21
EXPOSE 8761
COPY --from=build /target/rdp_server-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]