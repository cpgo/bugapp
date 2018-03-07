require "rspec/core/rake_task"
require "rom/sql/rake_task"
require "rom"
require "rom-sql"
RSpec::Core::RakeTask.new(:test)

task default: :test

namespace :db do
  task :setup do
    ROM.container(:sql, "postgres://localhost/bugapp") do |config|
      # config.auto_registration("lib/apps/*")
    end
  end
end
