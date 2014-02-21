require File.dirname(__FILE__) + '/lib/postini'

Dir['tasks/**/*.rake'].each { |t| load t }

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = 'postini'
    gemspec.version = Postini::VERSION
    gemspec.summary = 'Library to make the Postini SOAP API more palatable'
    gemspec.description = 'Library to make the Postini SOAP API more palatable'
    gemspec.email = 'kenneth.kalmer@gmail.com'
    gemspec.homepage = 'http://postini4r.rubyforge.org'
    gemspec.authors = ['kenneth.kalmer@gmail.com']
    gemspec.post_install_message = IO.read('PostInstall.txt')
    gemspec.extra_rdoc_files.include '*.txt'
  # dependencies defined in Gemfile
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with 'gem install jeweler'"
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  desc "Build YARD documentation"
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end

