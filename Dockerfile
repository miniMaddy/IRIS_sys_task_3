FROM ruby:2.5.1

RUN apt-get update -qq \
  && apt-get install -y \
    build-essential \
    ruby-dev \
    zlib1g-dev \
    liblzma-dev \
    libxslt-dev \
    libxml2-dev \
    locales \
    default-libmysqlclient-dev \
    nodejs \
    mysql-server


WORKDIR /app

COPY . /app/

ENV BUNDLE_PATH /gems
RUN bundle install 

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

