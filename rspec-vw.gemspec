# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/vw/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-vw"
  spec.version       = RSpec::Vw::VERSION
  spec.authors       = ["Klaus Hartl"]
  spec.email         = ["klaus.hartl@gmail.com"]

  spec.summary       = %q{RSpec VW}
  spec.description   = %q{Make your failing specs succeed under CI tools scrutiny.}
  spec.homepage      = "https://github.com/carhartl/rspec-vw"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rspec", ">= 3"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
