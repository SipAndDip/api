FROM ruby:2.6

RUN apt-get update &&\
    apt-get install -y nodejs &&\
    apt-get clean

WORKDIR /opt/app

RUN bundle config --global frozen 1
COPY Gemfile Gemfile.lock ./
RUN bundle install

