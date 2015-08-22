FROM ruby:2.2.0

RUN apt-get update && apt-get -y install build-essential postgresql-client libmysqlclient-dev libxml2-dev libxslt-dev git-core curl rubygems

RUN mkdir /thingspeak
WORKDIR /thingspeak
ADD Gemfile /thingspeak/Gemfile
RUN bundle update
RUN bundle install
ADD . /thingspeak
