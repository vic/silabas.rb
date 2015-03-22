# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'silabas/version'

Gem::Specification.new do |spec|
  spec.name          = "silabas"
  spec.version       = Silabas::VERSION
  spec.authors       = ["Victor Borja"]
  spec.email         = ["vborja@apache.org"]
  spec.summary       = %q{Spanish syllabe separator}
  spec.description   = %q{Separador de silabas en espanol}
  spec.homepage      = "http://github.com/vic/silabas.rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
