# Usa un'immagine base di OpenJDK
FROM openjdk:11-jdk-slim

# Imposta una variabile d'ambiente per il jar
ARG JAR_FILE=target/prenotazionetavoli-0.0.1-SNAPSHOT.jar

# Copia il jar nell'immagine
COPY ${JAR_FILE} app.jar

# Espone la porta in cui l'applicazione girerà
EXPOSE 8080

#Comando per avviare applicazione
ENTRYPOINT ["java", "-jar", "/app.jar"]