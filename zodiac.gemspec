# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'zodiac/version'

Gem::Specification.new do |s|
  s.name        = 'zodiac'
  s.version     = Zodiac::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Vsevolod Romashov, Thomas Burkhalter, Robin Steiner']
  s.email       = ['burkhalter@puzzle.ch, steiner@puzzle.ch']
  s.homepage    = 'https://github.com/puzzle/zodiac/'
  s.summary     = 'Zodiac sign calculator for any date'
  s.description = 'Adds methods for getting a zodiac sign from any Date/Time
    object containing a date of birth, and can also
    extend ActiveRecord::Base adding some handy instance and
    class methods (for searching by a given zodiac sign and more).'

  s.add_dependency 'funtimes'
  s.add_dependency 'i18n'

  s.add_development_dependency 'activerecord', '~> 3'
  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
