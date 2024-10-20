FROM postgres@sha256:68b988a164c8bdf0752fa7a4ae2d4b34a058e21c6327e69f741c081a38e97254

# NOTE: check pgvector and postgis versions
RUN apt-get update && \
    apt-get install -y postgresql-$PG_MAJOR-postgis-3 \
    postgresql-$PG_MAJOR-pgvector \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "CREATE EXTENSION IF NOT EXISTS postgis;" > /docker-entrypoint-initdb.d/init_postgis.sql
RUN echo "CREATE EXTENSION IF NOT EXISTS vector;" > /docker-entrypoint-initdb.d/init_pgvector.sql
