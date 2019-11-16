require "rake/testtask"
require 'simplecov'
SimpleCov.start

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "src"
  t.test_files = FileList['test/*_test.rb']
end

task :default => :test