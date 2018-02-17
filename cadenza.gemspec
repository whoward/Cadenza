
# frozen_string_literal: true

require File.expand_path('lib/cadenza/version', File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name = 'cadenza'
  s.version = Cadenza::Version::STRING
  s.platform = Gem::Platform::RUBY

  s.authors = ['William Howard']
  s.email = ['whoward.tke@gmail.com']
  s.homepage = 'http://github.com/whoward/Cadenza'

  s.summary = 'Powerful text templating language similar to Smarty/Liquid/Django'

  s.require_paths = ['lib']

  s.default_executable = 'cadenza'
  s.executables = ['cadenza']

  s.files = Dir.glob('lib/**/*.rb')
  s.test_files = Dir.glob('test/**/*.rb')
end
