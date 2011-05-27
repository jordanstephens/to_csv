#encoding: utf-8

require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
load 'test/tasks.rake'

CLEAN.include('pkg')

spec = Gem::Specification.load("to_csv.gemspec")

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.define
end

task :build => [:clean, :repackage]

task :default => :test

