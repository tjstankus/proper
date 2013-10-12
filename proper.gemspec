# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'proper/version'

Gem::Specification.new do |spec|
  spec.name          = "proper"
  spec.version       = Proper::VERSION
  spec.authors       = ["TJ Stankus"]
  spec.email         = ["tj@stank.us"]
  spec.description   = %q{Pull request operations}
  spec.summary       = %q{Pull request operations}
  spec.homepage      = "https://github.com/tjstankus/proper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
