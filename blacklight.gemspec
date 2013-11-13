# -*- coding: utf-8 -*-
version = File.read(File.expand_path("../BLACKLIGHT_VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.name        = "blacklight"
  s.version     = version 
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonathan Rochkind", "Matt Mitchell", "Chris Beer", "Jessie Keck", "Jason Ronallo", "Vernon Chapman", "Mark A. Matienzo", "Dan Funk", "Naomi Dushay", "Justin Coyne"]
  s.email       = ["blacklight-development@googlegroups.com"]
  s.homepage    = "http://projectblacklight.org/"
  s.summary     = "Blacklight provides a discovery interface for any Solr (http://lucene.apache.org/solr) index."
  s.description = %q{Blacklight is an open source Solr user interface discovery platform. You can use Blacklight to enable searching and browsing of your collections. Blacklight uses the Apache Solr search engine to search full text and/or metadata.}
  s.license     = "Apache 2.0"
  s.rubyforge_project = "blacklight"
  
  s.files         = `git ls-files | grep -v blacklight-bootstrap2 |grep -v blacklight-core`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails",     ">= 3.2.6", "< 5"
  s.add_dependency "blacklight-bootstrap2", version 
  s.add_development_dependency "jettywrapper", ">= 1.4.1"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'engine_cart', ">= 0.1.1"
end
