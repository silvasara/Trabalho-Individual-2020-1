FROM ruby:2.5.7

RUN apt-get update -qq 
RUN apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /api

WORKDIR /api

ADD Gemfile /api

RUN gem install bundler:2.1.4
RUN bundle install

ADD . /api

COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
