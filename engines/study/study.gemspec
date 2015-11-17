$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "study/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "study"
  s.version     = Study::VERSION
  s.authors     = ["elton silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Study."
  s.description = "TODO: Description of Study."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
