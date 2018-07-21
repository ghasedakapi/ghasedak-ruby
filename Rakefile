lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ghasedak/version'

desc 'Build and install ghasedak gem'
task default: %i[build install]

desc 'Build ghasedak gem'
task :build do
  sh('gem build ghasedak.gemspec')
end

desc 'Install builded lastest version of gem'
task :install do
  sh('gem install ghasedak-' + Ghasedak::VERSION + '.gem')
end

desc 'Check code style with rubocop'
task :rubocop do
  sh('rubocop')
end

desc 'Run code tests'
task test: [:rubocop] do
end

desc 'Generate yard docs in doc/ directory'
task :doc do
  sh('yard doc')
end
