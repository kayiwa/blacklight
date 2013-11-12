# encoding: UTF-8
require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

load "tasks/blacklight.rake"
load "tasks/release.rake"

task :default => [:ci]
task :clean => ['blacklight:clean']

