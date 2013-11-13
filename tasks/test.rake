require 'rspec/core/rake_task'
task :spec => [:core_spec, :front_end_spec]

RSpec::Core::RakeTask.new(:core_spec) do |t|
  t.pattern =  'spec/**/*_spec.rb'
end

task :front_end_spec do
  view_specs = ENV['CURRENT_ENGINE_NAME'] ? ENV['CURRENT_ENGINE_NAME'].gsub(/blacklight-/, '') + '_spec' : :bootstrap2_spec
  Rake::Task[view_specs].invoke
end

RSpec::Core::RakeTask.new(:bootstrap2_spec) do |t|
  t.pattern = 'blacklight-bootstrap2/spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:bootstrap3_spec) do |t|
  t.pattern = 'blacklight-bootstrap3/spec/**/*_spec.rb'
end

