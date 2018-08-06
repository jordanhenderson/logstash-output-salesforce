Gem::Specification.new do |s|
  s.name            = 'logstash-output-salesforce'
  s.version         = '1.0.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "An output to create and update Salesforce sObjects using the API"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Russ Savage"]
  s.email           = 'russ@elastic.co'
  s.homepage        = "https://github.com/russorat/logstash-output-salesforce"
  s.require_paths = ["lib"]

  # Files
  s.files = `find .  -type f -not -path '*/\.*'`.split($\)

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'restforce', '~> 2.5'

  s.add_development_dependency 'logstash-devutils'
end
