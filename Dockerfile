FROM eclipse-temurin:20-jre-jammy
RUN echo "deb http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null && \
    apt-get update && \
    apt-get install postgresql-client-15 -y && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists
