# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "to_csv/version"

Gem::Specification.new do |s|
  s.author = "Ícaro Leopoldino da Motta"
  s.email = "icaro.ldm@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.7'
  s.name = "to-csv"
  s.summary = s.description = "Convert arrays to CSV (array of hashes, matrixes, ActiveRecord objects etc)."
  s.homepage = "http://github.com/cicloid/to-csv"
  s.version = ToCSV::VERSION

  s.add_dependency 'activesupport', '>= 3.0'
  s.add_development_dependency 'activerecord', '>= 3.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.post_install_message = %q{
========================================================================

  Thanks for installing ToCSV.

  If your Ruby version is lower than 1.9 you need to install fastercsv.

    $ sudo gem install fastercsv

========================================================================

}
end