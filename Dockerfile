FROM eclipse-temurin:20-jre-jammy
RUN apt-get update && apt-get install gnupg -y && \
    echo "deb http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7FCC7D46ACCC4CF8 && \
    apt-get update && \
    apt-get install postgresql-client-15 -y && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists
