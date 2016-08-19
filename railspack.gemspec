# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'railspack/version'

Gem::Specification.new do |spec|
  spec.name          = "railspack"
  spec.version       = Railspack::VERSION
  spec.authors       = ["jdmorlan"]
  spec.email         = ["jay.d.morlan@gmail.com"]

  spec.summary       = "Integrate webpack into your Rails app"
  spec.description   = "Integrate webpack into your Rails app"
  spec.homepage      = "http://github.com/jdmorlan/railspack"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir['README.md', 'LICENSE.txt', 'lib/**/*']
  spec.bindir        = "bin"
  spec.executables   = ["railspack"]
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
