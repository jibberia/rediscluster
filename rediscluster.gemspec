# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rediscluster/version'

Gem::Specification.new do |spec|
  spec.name          = "rediscluster"
  spec.version       = Rediscluster::VERSION
  spec.authors       = ["Kevin Cox"]
  spec.email         = ["kevintcox@gmail.com"]

  spec.summary       = %q{Antirez' redis-rb-cluster Redis cluster implementation in a gem}
  spec.description   = %q{This is just a rubygem wrapper of github.com/antirez/redis-rb-cluster.}
  spec.homepage      = "https://github.com/HYPERHYPER/redis-rb-cluster"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'redis', '~> 3.0', '>= 3.0.0'
end
