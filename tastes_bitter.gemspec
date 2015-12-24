$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tastes_bitter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

  s.name = "tastes_bitter"
  s.version = TastesBitter::VERSION
  s.authors = ["Mat Harvard"]
  s.email = ["contact@matharvard.ca"]
  s.homepage = "https://github.com/matharvard/tastes_bitter"
  s.summary = "TODO: Summary of TastesBitter."
  s.description = "TODO: Description of TastesBitter."
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "browser", "~> 1.0"
  s.add_dependency 'coffee-rails'

  s.add_development_dependency "sqlite3"

end
