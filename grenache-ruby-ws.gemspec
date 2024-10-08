# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grenache/websocket/version'

Gem::Specification.new do |spec|
  spec.name          = "grenache-ruby-ws"
  spec.version       = Grenache::Websocket::VERSION
  spec.email         = ["info@bitfinex.com"]
  spec.author        = "Bitfinex <info@bitfinex.com>"

  spec.summary       = %q{Websocket client for Grenache}
  spec.homepage      = "https://github.com/bitfinexcom/grenache-ruby-ws"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "eventmachine", "~> 1.0"
  spec.add_runtime_dependency "faye-websocket", "~> 0.10"
  spec.add_runtime_dependency "grenache-ruby-base", "~> 0.2.12"
  spec.add_runtime_dependency "oj", "~> 3.6"
  spec.add_runtime_dependency "thin", "~> 1.7"

end
