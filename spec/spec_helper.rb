begin
  require 'spec'
rescue LoadError
  require 'rubygems' unless ENV['NO_RUBYGEMS']
  gem 'rspec'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'postini'
require 'ostruct'

Spec::Runner.configure do |config|
  config.mock_with :mocha
end
