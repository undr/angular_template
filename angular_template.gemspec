# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'angular_template/version'

Gem::Specification.new do |spec|
  spec.name          = 'angular_template'
  spec.version       = AngularTemplate::VERSION
  spec.authors       = ['undr']
  spec.email         = ['undr@yandex.ru']
  spec.summary       = %q{The handy way to utilize angular templates in rails using Sprockets}
  spec.description   = %q{The handy way to utilize angular templates in rails using Sprockets}
  spec.homepage      = 'https://github.com/undr/angular_template'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 4.0.0', '< 5.0'
  spec.add_dependency 'tilt', '~> 1.1'

  spec.add_development_dependency 'bundler', "~> 1.6"
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'slim'
end
