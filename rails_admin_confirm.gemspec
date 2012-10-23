$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_confirm/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_confirm"
  s.version     = RailsAdminConfirm::VERSION
  s.authors     = ["dra1n"]
  s.email       = ["dra1n86@gmail.com"]
  s.homepage    = "http://github.com/dra1n"
  s.summary     = "Confirm users action"
  s.description = "Confirm users action"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
end
