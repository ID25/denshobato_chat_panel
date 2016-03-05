# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'denshobato_chat_panel/version'

Gem::Specification.new do |spec|
  spec.name          = 'denshobato_chat_panel'
  spec.version       = DenshobatoChatPanel::VERSION
  spec.authors       = ['ID25']
  spec.email         = ['xid25x@gmail.com']

  spec.summary       = 'Chat Panel for Denshobato messaging.'
  spec.description   = 'Chat Panel for Denshobato messaging.'
  spec.homepage      = 'https://github.com/ID25/denshobato_chat_panel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'grape'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'sqlite3'
end
