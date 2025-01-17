# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require File.expand_path('../../middleman-core/lib/middleman-core/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman'
  s.version     = Middleman::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['Thomas Reynolds', 'Ben Hollis', 'Karl Freeman']
  s.email       = ['me@tdreyno.com', 'ben@benhollis.net', 'karlfreeman@gmail.com']
  s.homepage    = 'https://middlemanapp.com'
  s.summary     = 'Hand-crafted frontend development'
  s.description = 'A static site generator. Provides dozens of templating languages (Haml, Sass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.'

  s.files        = `git ls-files -z`.split("\0")
  s.test_files   = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_path = 'lib'
  s.required_ruby_version = '>= 3.1.0'

  s.add_dependency('middleman-core', Middleman::VERSION)
  s.add_dependency('middleman-cli', Middleman::VERSION)
  s.add_dependency('haml', ['>= 4.0.5'])
  s.add_dependency('coffee-script', ['~> 2.4'])
  s.add_dependency('kramdown', ['~> 2.3'])
  s.add_dependency('webrick', ['~> 1.7'])
end
