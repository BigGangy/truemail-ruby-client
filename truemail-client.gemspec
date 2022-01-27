# frozen_string_literal: true

lib = ::File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truemail/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'truemail-client'
  spec.version       = Truemail::Client::VERSION
  spec.authors       = ['Vladislav Trotsenko']
  spec.email         = ['admin@bestweb.com.ua']

  spec.summary       = %(truemail-client)
  spec.description   = %(Truemail web API client library for Ruby)

  spec.homepage      = 'https://github.com/truemail-rb/truemail-ruby-client'
  spec.license       = 'MIT'

  spec.metadata = {
    'homepage_uri' => 'https://truemail-rb.org',
    'changelog_uri' => 'https://github.com/truemail-rb/truemail-ruby-client/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/truemail-rb/truemail-ruby-client',
    'documentation_uri' => 'https://truemail-rb.org/truemail-ruby-client',
    'bug_tracker_uri' => 'https://github.com/truemail-rb/truemail-ruby-client/issues'
  }

  spec.required_ruby_version = '>= 2.5.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| ::File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler-audit', '~> 0.9.0.1'
  spec.add_development_dependency 'fasterer', '~> 0.9.0'
  spec.add_development_dependency 'ffaker', '~> 2.20'
  spec.add_development_dependency 'json_matchers', '~> 0.11.1'
  spec.add_development_dependency 'overcommit', '~> 0.58.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.9'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'reek', '~> 6.1'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.25'
  spec.add_development_dependency 'rubocop-performance', '~> 1.13', '>= 1.13.2'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.8'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
  spec.add_development_dependency 'webmock', '~> 3.14'
end
