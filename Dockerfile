FROM ruby:2.7.4-alpine

RUN apk add --no-cache build-base

WORKDIR /app
COPY . /app

RUN gem install bundler
RUN bundle install --without development test

EXPOSE 8080

CMD ["bundle", "exec", "rackup", "--port", "9292", "--host", "0.0.0.0"]