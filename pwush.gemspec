lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pwush/version'

Gem::Specification.new do |spec|
  spec.name          = 'njiuko-pwush'
  spec.version       = Pwush::VERSION
  spec.authors       = ['Yaroslav Litvinov', 'Ralph von der Heyden']
  spec.email         = ['beyondthemkad@gmail.com', 'ralph@rvdh.de']

  spec.summary       = 'Pushwoosh remote API ruby toolkit'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/njiuko/pwush'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_dependency 'dry-monads', '~> 1.0'
  spec.add_dependency 'dry-struct', '~> 1.0'
  spec.add_dependency 'http', '~> 5.0'
  spec.add_dependency 'oj', '~> 3'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'webmock', '~> 3.14'
end
