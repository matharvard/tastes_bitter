$:.push File.expand_path('../lib', __FILE__)

require 'tastes_bitter/version'

Gem::Specification.new do |s|

  s.name = 'tastes_bitter'
  s.version = TastesBitter::VERSION
  s.authors = 'Mat Harvard'
  s.email = 'contact@matharvard.ca'
  s.homepage = 'https://github.com/matharvard/tastes_bitter/'
  s.summary = 'JavaScript error notifications for Rails.'
  s.description = 'JavaScript error notifications for Rails.'
  s.license = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 2.3.0'

  s.add_dependency 'rails', '~> 4.2.5'
  s.add_dependency 'browser', '~> 1.0'
  s.add_dependency 'coffee-rails'

end
