FROM elixir:1.9.4
RUN apt-get update -yqq
COPY . /usr/src/app
WORKDIR /usr/src/app