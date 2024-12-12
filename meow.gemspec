# frozen_string_literal: true

require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'meow-bundler'
  spec.version       = Meow::VERSION
  spec.authors       = ['Peter Wagner']
  spec.email         = ['1559510+thepwagner@users.noreply.github.com']

  spec.summary       = 'A Ruby library for validating cat sounds across different languages'
  spec.description   = 'Meow provides a simple way to validate whether a given string represents a valid cat sound in various languages including English, Japanese, Korean, Chinese, Spanish, German, French, and Russian.'
  spec.homepage      = 'https://github.com/thepwagner-org/meow-bundler'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.3'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"

  spec.files = Dir['lib/**/*', 'README.md']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'minitest', '~> 5.25'
  spec.add_development_dependency 'rake'
end
