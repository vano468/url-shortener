require 'bundler/setup'

require 'byebug' unless ENV['RACK_ENV'] == 'production'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new :spec
  task default: [:spec]
rescue LoadError
end

require_relative 'system/url_shortener/container'

require 'rom/sql/rake_task'
require 'sequel'

namespace :db do
  task :setup do
    UrlShortener::Container.boot! :rom
  end
end
