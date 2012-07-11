# -*- encoding: utf-8 -*-
require File.expand_path('../lib/source_position/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jun Lin"]
  gem.email         = ["linjunpop@gmail.com"]
  gem.description   = 'Editor friendly source location'
  gem.summary       = 'Editor friendly source location'
  gem.homepage      = "https://github.com/linjunpop/source_position"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec|features)/})
  gem.name          = "source_position"
  gem.require_paths = ["lib"]
  gem.version       = SourcePosition::VERSION

  if RUBY_VERSION < '1.9'
    unless defined?(RUBY_ENGINE) && RUBY_ENGINE =~ /rbx/
      gem.requirements << 'ruby18_source_location, v0.2 or greater'
    end
  end

  gem.add_development_dependency 'rspec'
end
