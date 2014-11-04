# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybartender/version'

Gem::Specification.new do |spec|
  spec.name          = "capybartender"
  spec.version       = Capybartender::VERSION
  spec.authors       = ["Alex Bezobchuk"]
  spec.email         = ["abezobchuk@gmail.com"]
  spec.summary       = %q{Selenium/Capybara profile builder}
  spec.description   = %q{An extension around Selenium and Capybara that provides prebuilt common profiles and extensions! }
  spec.homepage      = "https://github.com/Alexanderbez/capybartender"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_dependency "selenium-webdriver", "~> 2.41"
  spec.add_dependency "capybara", "~> 2.4"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "bump", "~> 0.5"
end
