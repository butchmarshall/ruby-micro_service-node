# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'micro_service/node/version'

Gem::Specification.new do |spec|
	spec.name          = "micro_service-node"
	spec.version       = MicroService::Node::VERSION
	spec.authors       = ["Butch Marshall"]
	spec.email         = ["butch.a.marshall@gmail.com"]
	
	spec.summary       = "ActiveRecord implementation to store MicroService::Nodes"
	spec.description   = "MicroService::Nodes so service instances can communicate"
	spec.homepage      = "https://github.com/butchmarshall/micro_service-node"
	
	spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
	spec.bindir        = "exe"
	spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]

	spec.add_dependency "activerecord", [">= 3.0", "<= 5.0"]
	spec.add_dependency "validate_url"

	spec.add_dependency "micro_service-client"

	if RUBY_PLATFORM == 'java'
		spec.add_development_dependency "jdbc-sqlite3", "> 0"
		spec.add_development_dependency "activerecord-jdbcsqlite3-adapter", "> 0"
	else
		spec.add_development_dependency "sqlite3", "> 0"
	end

	spec.add_development_dependency "bigdecimal", "~> 1.1"
	spec.add_development_dependency "database_cleaner"
	spec.add_development_dependency "factory_girl", "> 4.0"
	spec.add_development_dependency "bundler", "~> 1.7"
	spec.add_development_dependency "rake", "~> 10.0"

	spec.add_development_dependency "rspec"
	spec.add_development_dependency "webmock"
end
