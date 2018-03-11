FROM ruby:2.4.3
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /template
WORKDIR /template
COPY Gemfile /template/Gemfile
COPY Gemfile.lock /template/Gemfile.lock
RUN bundle install
COPY . /template