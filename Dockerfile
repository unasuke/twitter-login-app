FROM ruby:3.0.2
WORKDIR /app

RUN apt-get update && apt-get install -y libpq-dev make g++ git

COPY Gemfile Gemfile.lock /app/
RUN bundle install -j4

COPY . .
