$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "smart_data_mapper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smart_data_mapper"
  s.version     = SmartDataMapper::VERSION
  s.authors     = ["ta6asko"]
  s.email       = ["ta6asko@gmail.com"]
  s.homepage    = "url"
  s.summary     = "Smart Data Mapper for CSV files"
  s.description = "Smart Data Mapper for CSV files"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
