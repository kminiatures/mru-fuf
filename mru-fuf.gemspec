# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mru/fuf/version'

Gem::Specification.new do |spec|
  spec.name          = "mru-fuf"
  spec.version       = Mru::Fuf::VERSION
  spec.authors       = ["hiroshi kobayashi"]
  spec.email         = ["kobayashi@ans-web.co.jp"]

  spec.summary       = %q{print mru Files from FuzzyFinder}
  spec.description   = %q{print Most Recentry Used Files from FuzzyFinder}
  spec.homepage      = "https://github.com/kminiatures/mru-fuf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
