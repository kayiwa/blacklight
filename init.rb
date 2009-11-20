#
# list application gems here...
# list testing gems in the plugin's config/environment.rb file
#   - this will prevent users from having to install testing gems
#

config.gem "authlogic", :version=>'2.1.2'

config.gem 'marc', :version=>'0.3.0'

config.gem 'mislav-will_paginate', :lib=>'will_paginate', :version=>'2.3.8', :source=>'http://gems.github.com'

config.gem 'rsolr', :lib=>'rsolr', :version=>'0.11.0', :source=>'http://gemcutter.org'
config.gem 'rsolr-ext', :lib=>'rsolr-ext', :version=>'0.11.1', :source=>'http://gemcutter.org'

#if defined?(JRUBY_VERSION)
  #sudo jgem install activerecord-jdbc-adapter jdbc-sqlite3 activerecord-jdbcsqlite3-adapter ActiveRecord-JDBC
  # These gems aren't configured correctly...
  #config.gem 'activerecord-jdbc-adapter'
  #config.gem 'jdbc-sqlite3'
  #config.gem 'activerecord-jdbcsqlite3-adapter'
  #config.gem 'ActiveRecord-JDBC'
#end

config.after_initialize do
  require 'will_paginate_link_renderer'   # in local ./lib
  require 'taggable_pagination'           # in local ./lib
  Blacklight.init
  Mime::Type.register_alias "text/plain", :refworks
  Mime::Type.register_alias "application/x-endnote-refer", :endnote
end

unless File.exists? File.join(Rails.root, 'config', 'initializers', 'blacklight_config.rb')
  raise "Blacklight requires a config/initializers/blacklight_config.rb file."
end

# loading these here prevents Rails from reloading in development mode -- which erases Blacklight.config
# because config/initializers/* are only loaded at boot time.
require 'rsolr-ext'
require 'blacklight'