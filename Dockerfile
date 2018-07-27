FROM docker.elastic.co/logstash/logstash-oss:6.3.1

WORKDIR /usr/src/plugin

COPY Gemfile *.gemspec ./

COPY . .

