source 'http://rubygems.org'

# Please see blacklight.gemspec for dependency information.
gemspec

gem 'blacklight-bootstrap2', path: './blacklight-bootstrap2'
gem 'blacklight-core', path: './blacklight-core'

gem 'simplecov', :platform => :mri
gem 'simplecov-rcov', :platform => :mri

group :test do
  gem 'devise'
  gem 'devise-guests'
  gem "bootstrap-sass"
  gem 'turbolinks'
  gem 'poltergeist'
end

if File.exists?('spec/test_app_templates/Gemfile.extra')
  eval File.read('spec/test_app_templates/Gemfile.extra'), nil, 'spec/test_app_templates/Gemfile.extra'
end
