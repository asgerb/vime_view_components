# frozen_string_literal: true

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "vime_view_components/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "vime_view_components"
  spec.version     = VimeViewComponents::VERSION
  spec.authors     = ["Asger Behncke Jacobsen", "Tomas Celizna"]
  spec.email       = ["a@asgerbehnckejacobsen.dk", "mail@tomascelizna.com"]
  spec.homepage    = "https://github.com/asgerb/vime_view_components"
  spec.summary     = "ViewComponents for vime.js"
  spec.description = "ViewComponents for vime.js"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "dry-initializer", "~> 3.0"
  spec.add_dependency "dry-types", "~> 1.4"
  spec.add_dependency "view_component", [">= 2.0.0", "< 3.0"]

  spec.add_development_dependency "minitest", "~> 5.14"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rubocop-rails_config"
end
