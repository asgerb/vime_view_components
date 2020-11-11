$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "vime_view_components/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "vime_view_components"
  spec.version     = VimeViewComponents::VERSION
  spec.authors     = ["Asger Behncke Jacobsen"]
  spec.email       = ["a@asgerbehnckejacobsen.dk"]
  spec.homepage    = "https://github.com/asgerb/vime_view_components"
  spec.summary     = "ViewComponents for vime.js"
  spec.description = "ViewComponents for vime.js"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_runtime_dependency "rails", [">= 5.0.0", "< 7.0"]

  spec.add_dependency "dry-initializer", "~> 3.0"
  spec.add_dependency "dry-types", "~> 1.4"
  
  spec.add_dependency "view_component", [">= 2.0.0", "< 3.0"]

  spec.add_development_dependency "minitest", "~> 5.14"
  spec.add_development_dependency "minitest-reporters"
end
