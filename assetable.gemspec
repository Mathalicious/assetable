$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "assetable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "assetable"
  s.version     = Assetable::VERSION
  s.authors     = ["John Koht"]
  s.email       = ["john@kohactive.com"]
  s.homepage    = "http://www.github.com/kohactive/assetable"
  s.summary     = "Dead simple asset uploader attachments for your active record models"
  s.description = "Dead simple asset uploader attachments for your active record models"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", '6.1.6.1'

  s.add_development_dependency "thor", '~> 1.2'
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers", "~> 2.5"
  s.add_development_dependency "factory_bot_rails", "~> 4.3"
  s.add_development_dependency "guard-rspec", "~> 4.7"
  s.add_development_dependency "guard-spork", "~> 2.1"
  s.add_development_dependency "sqlite3"

  s.add_dependency 'carrierwave', '0.10.0'
  s.add_dependency 'fog', '~> 1.38'
  s.add_dependency 'kaminari', '~> 1.2.1'
  s.add_dependency 'rmagick', '~> 2.13.2'
  s.add_dependency 'plupload-rails', '~> 1.2.1'
  s.add_dependency 'simple_form'

  s.add_dependency 'coffee-rails', "~> 4.2"
  s.add_dependency 'haml-rails'
  s.add_dependency 'jquery-rails', '~> 4.1'
  s.add_dependency 'sass-rails', "~> 5.0"
  s.add_dependency 'responders'
end
