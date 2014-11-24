# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'constantizer/version'

Gem::Specification.new do |spec|
  spec.name          = "constantizer"
  spec.version       = Constantizer::VERSION
  spec.authors       = ["Baraa Al-Bourghli", "Essam Arab"]
  spec.email         = ["essam.a0@gmail.com", "baraa.bourghli@gmail.com"]
  spec.summary       = "constantizer is a gem for bulding constants in the app using YAML files"
  spec.homepage      = "https://github.com/baraabourghli/constantizer"
  spec.license       = "MIT"

  spec.files         = Dir.glob('lib/**/*')
  spec.executables   = ['constantizer']

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
