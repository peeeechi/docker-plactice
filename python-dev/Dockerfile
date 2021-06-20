FROM ubuntu:20.10

# USER root

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev 

# RUN apt-get tk-dev

RUN curl https://www.python.org/ftp/python/3.8.10/Python-3.8.10.tar.xz