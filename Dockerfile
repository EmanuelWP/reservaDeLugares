FROM maven:3.8.4-openjdk-17-slim

WORKDIR /app/reservaDeLugares

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/EmanuelWP/reservaDeLugares.git /app/reservaDeLugares

RUN ["mvn", "package"]

ENTRYPOINT ["java", "-cp", "target/classes", "Main"]
