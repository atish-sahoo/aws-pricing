
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib)
require "aws_pricing/version"

Gem::Specification.new do |spec|
  spec.name          = "aws-pricing"
  spec.version       = AWSPricing::VERSION
  spec.authors       = ["Atish Sahoo"]
  spec.email         = ["atishsahoo.vssut@gmail.com"]

  spec.description   = %q{This library helps you to calculate cost for aws resources}
  spec.summary       = %q{Calculate AWS resource cost}
  spec.homepage      = "https://github.com/atish-sahoo/aws-pricing"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.16.4"
  spec.add_dependency "oj", "~> 3.10.5"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
