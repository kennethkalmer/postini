require 'rspec/core/rake_task'

desc "Run the specs under spec/models"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = "--colour"
end
