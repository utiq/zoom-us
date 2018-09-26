# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|

  gem.add_dependency 'httparty', '~> 0.13'
  gem.add_dependency 'json', '>= 1.8'

  gem.add_development_dependency 'byebug'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'

  gem.authors       = ['Cesar Gutierrez']
  gem.email         = ['cesar@gutierrez.pe']
  gem.description   = %q{A Ruby wrapper for zoom.us API v2}
  gem.summary       = %q{zoom.us API wrapper}
  gem.homepage      = 'https://github.com/utiq/zoom_us'
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'zoom_us'
  gem.require_paths = ['lib']
  gem.version       = '0.1.0'
end
