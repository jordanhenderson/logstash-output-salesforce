FROM jruby:latest

WORKDIR /usr/src/plugin

COPY Gemfile *.gemspec ./

RUN bundle install

COPY . .
