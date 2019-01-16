FROM ruby:2.6

RUN apt-get update &&\
    apt-get install -y nodejs &&\
    apt-get clean

WORKDIR /opt/app

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

COPY Gemfile Gemfile.lock ./
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
