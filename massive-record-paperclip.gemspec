# encoding: utf-8

Gem::Specification.new do |gem|

  gem.name        = 'massive-record-paperclip'
  gem.version     = '0.0.3'
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = 'Jamil Antonino'
  gem.email       = 'jamil@fluidsoul.net'
  gem.homepage    = 'https://github.com/jamiltao/massive-record-paperclip'
  gem.summary     = 'MassiveRecord::Paperclip enables you to use Paperclip with the MassiveRecord ORM for HBase.'
  gem.description = 'MassiveRecord::Paperclip enables you to use Paperclip with the MassiveRecord ORM for HBase.'

  gem.files         = %x[git ls-files].split("\n")
  gem.test_files    = %x[git ls-files -- {spec}/*].split("\n")
  gem.require_path  = 'lib'

  gem.add_dependency 'paperclip', ['~> 2.3.11']

end