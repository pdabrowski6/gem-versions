require File.expand_path('../lib/gem_versions/version', __FILE__)

Gem::Specification.new do |s|
  s.add_development_dependency 'rspec', '~> 3.7', '>= 3.7.0'
  s.add_runtime_dependency 'rest-client', '>= 2.0.2'
  s.add_runtime_dependency 'nokogiri', '>= 1.10.3'
  s.name        = 'gem-versions'
  s.version     = ::GemVersions::Version
  s.date        = '2019-12-23'
  s.summary     = "Check versions of the given gem"
  s.description = "Check versions of the given gem"
  s.authors     = ["Paweł Dąbrowski"]
  s.email       = 'dziamber@gmail.com'
  s.files       = Dir['lib/**/*.rb', 'spec/helper.rb']
  s.homepage    =
    'http://github.com/pdabrowski6/gem-versions'
  s.license       = 'MIT'
  s.required_ruby_version = '>= 2.3.0'
end
