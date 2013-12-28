# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salsa_labs/version'

Gem::Specification.new do |gem|
  gem.name          = "salsa_labs"
  gem.version       = SalsaLabs::VERSION
  gem.authors       = ['Geoff Harcourt', 'Allison Sheren']
  gem.email         = ['asheren@gmail.com']
  gem.description   = %q{A Ruby binding for the Salsa Labs (http://salsalabs.com) API.}
  gem.summary       = %q{Salsa Labs' API contains information about supporters, donations, and actions. This gem faciliates pulling that information into a Ruby application.}
  gem.homepage      = "http://github.com/geoffharcourt/ruby-salsa_labs"
  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ['lib']
  gem.licenses      = ['LICENSE']

  gem.add_runtime_dependency 'dotenv'
  gem.add_runtime_dependency 'faraday'
  gem.add_runtime_dependency 'httparty'
  gem.add_runtime_dependency 'nokogiri'

  gem.add_development_dependency 'fakeweb'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'webmock'

end
