FROM eclipse-temurin
RUN apt-get update && apt-get install postgresql-client -y && rm -rf /var/cache/apt/archives /var/lib/apt/lists