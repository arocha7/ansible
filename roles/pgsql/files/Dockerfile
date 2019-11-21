#
# example Dockerfile for https://docs.docker.com/engine/examples/postgresql_service/
#
#ARG UBUNTU_VERSION=latest
ARG UBUNTU_VERSION=18.04

FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y software-properties-common gnupg

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

ENV PGSQL_VERSION=${PGSQL_VERSION} \
    UBUNTO_VERSION=${UBUNTO_VERSION}

RUN apt-get install -y postgresql-${PGSQL_VERSION} postgresql-client-${PGSQL_VERSION} postgresql-contrib-${PGSQL_VERSION}

USER postgres

RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    createdb -O docker docker

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/${PGSQL_VERSION}/main/pg_hba.conf

RUN echo "listen_addresses='*'" >> /etc/postgresql/${PGSQL_VERSION}/main/postgresql.conf

EXPOSE 5432

VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

CMD ["/usr/lib/postgresql/${PGSQL_VERSION}/bin/postgres", "-D", "/var/lib/postgresql/${PGSQL_VERSION}/main", "-c", "config_file=/etc/postgresql/${PGSQL_VERSION}/main/postgresql.conf"]

