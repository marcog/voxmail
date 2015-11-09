# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'voxmail/version'

Gem::Specification.new do |spec|
  spec.name          = "voxmail"
  spec.version       = Voxmail::VERSION
  spec.authors       = ["Marco Ghezzi"]
  spec.email         = ["marcog@gmail.com"]

  spec.summary       = %q{Very Simple APIs wrapper for Voxmail}
  spec.description   = %q{Very Simple APIs wrapper for [Voxmail]:http://www.voxmail.it}
  spec.homepage      = "https://github.com/marcog/voxmail"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
