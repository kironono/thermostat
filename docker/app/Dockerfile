FROM ruby:2.6.7-slim

LABEL maintainer "Junichi Kakisako <kilo.sw@gmail.com>"

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
 && apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list

RUN apt-get update && apt-get install -y \
    vim \
    libpq-dev \
    postgresql-client-12 \
    yarn \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

COPY docker-entrypoint.sh /tmp
RUN chmod +x /tmp/docker-entrypoint.sh
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
