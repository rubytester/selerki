# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selerki/version'

Gem::Specification.new do |spec|
  spec.name          = 'selerki'
  spec.version       = Selerki::VERSION
  spec.authors       = ['rubytester']
  spec.email         = ['github@rubytester.com']
  spec.summary       = %q{selenium-webdriver Ruby Keyword Interface for views, models and controllers}
  spec.description   = %q{selenium-webdriver Ruby Keyword Interface for views, models and controllers}
  spec.homepage      = 'http://github.com/rubytester/selerki'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency 'selenium-webdriver', '~> 2.39'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 2.14'

end
