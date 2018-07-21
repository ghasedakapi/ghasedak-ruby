lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ghasedak/version'

Gem::Specification.new do |s|
  s.name        = 'ghasedak'
  s.version     = Ghasedak::VERSION
  s.date        = '2018-07-16'
  s.summary     = 'Ghasedak sms webservice gem'
  s.description = 'A set of utilities for Ghasedak rest api.'
  s.authors     = ['Dariush Abbasi']
  s.email       = 'poshtehani@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.homepage      =
    'http://github.com/ghasedakapi'
  s.license       = 'BSD-3-Clause-Clear'

  s.add_development_dependency 'rspec', '3.4'
end
