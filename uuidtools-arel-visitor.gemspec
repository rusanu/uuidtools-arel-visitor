# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uuidtools/visitor/version'

Gem::Specification.new do |spec|
  spec.name          = "uuidtools-arel-visitor"
  spec.version       = UUIDTools::Visitor::VERSION
  spec.authors       = ["Remus Rusanu"]
  spec.email         = ["contact@rusanu.com"]
  spec.description   = %q{Adds Arel visitors for UUIDTools::UUID. Based on jashmenn/activeuuid.}
  spec.summary       = %q{Arel visitor for UUIDTools::UUID}
  spec.homepage      = "https://github.com/rusanu/uuidtools-arel-visitor"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "uuidtools"
end
