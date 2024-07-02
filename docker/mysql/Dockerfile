# docker/mysql/Dockerfile

FROM mysql:8.0-debian

RUN apt-get update && \
    apt-get install -y percona-toolkit

COPY ./config/mysql/my.cnf /etc/mysql/my.cnf