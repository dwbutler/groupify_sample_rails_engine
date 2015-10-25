$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sample_rails_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sample_rails_engine"
  s.version     = SampleRailsEngine::VERSION
  s.authors     = ["David Butler"]
  s.email       = ["dwbutler@ucla.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SampleRailsEngine."
  s.description = "TODO: Description of SampleRailsEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "groupify"

  s.add_development_dependency "sqlite3"
end
