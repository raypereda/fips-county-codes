# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "fips-county-codes"
  gem.homepage = "http://github.com/raypereda/fips-county-codes"
  gem.license = "MIT"
  gem.summary = %Q{data structures for querying FIPS codes}
  gem.description = <<-EOF
  fips-county-code provides two hashes for converting between state and county pairs to FIPS codes. 
  The FIPS county code is a five-digit Federal Information Processing Standards (FIPS). 
  It uniquely identifies counties and county equivalents in the United States.
  This may be useful to you if you are processing voter data.
  EOF
  gem.email = "raypereda@gmail.com"
  gem.authors = ["Ray Pereda"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "fips-county-codes #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
