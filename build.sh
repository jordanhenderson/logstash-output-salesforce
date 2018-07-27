#!/bin/bash
docker build -t logstash-jruby .
docker run -v $(pwd):/usr/src/plugin logstash-jruby \
  env GEM_HOME=$(echo /usr/share/logstash/vendor/bundle/jruby/*/) \
  /opt/logstash/vendor/jruby/bin/jruby /opt/logstash/vendor/jruby/bin/gem \
    build logstash-output-salesforce.gemspec