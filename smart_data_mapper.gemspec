$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'smart_data_mapper/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'smart_data_mapper'
  s.version     = SmartDataMapper::VERSION
  s.authors     = ['ta6asko']
  s.email       = ['ta6asko@gmail.com']
  s.homepage    = 'https://github.com/ta6asko/smart_data_mapper'
  s.summary     = 'Smart Data Mapper for CSV files'
  s.description = 'Smart Data Mapper for CSV files'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
  s.add_dependency 'active_model_serializers', '~> 0.10.0'
  s.add_dependency 'pundit', '~> 1.1'

  s.add_development_dependency 'therubyracer'
  s.add_development_dependency 'less-rails'
  s.add_development_dependency 'twitter-bootstrap-rails'
  s.add_development_dependency 'haml-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency 'coffeelint'
  s.add_development_dependency 'overcommit'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubycritic'
  s.add_development_dependency 'scss_lint'
end
