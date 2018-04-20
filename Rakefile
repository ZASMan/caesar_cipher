gem 'rspec'
require 'rspec/core/rake_task'

desc 'Run tests for caesar cipher'
RSpec::Core::RakeTask.new do |task|
  lab = Rake.application.original_dir
  task.pattern = "#{lab}/*_spec.rb"
  task.verbose = false
end
