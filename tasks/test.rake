require 'rspec/core/rake_task'
task :spec => [:core_spec, :bootstrap2_spec]

RSpec::Core::RakeTask.new(:core_spec) do |t|
  t.pattern =  'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:bootstrap2_spec) do |t|
  t.pattern = 'blacklight-bootstrap2/spec/**/*_spec.rb'
end

