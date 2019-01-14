FROM ruby:2.6

RUN apt-get update &&\
    apt-get install -y nodejs &&\
    apt-get clean

WORKDIR /opt/app

COPY Gemfile Gemfile.lock ./
RUN bundle install
