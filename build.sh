#!/bin/bash
docker build -t logstash-jruby .
docker run -v $(pwd):/usr/src/plugin logstash-jruby \
  gem build logstash-output-salesforce.gemspec