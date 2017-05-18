require 'rspec/core/rake_task'
require_relative 'lib/image_vise'

if RUBY_VERSION > '2.2.1'
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.version = ImageVise::VERSION
    gem.name = "image_vise"
    gem.summary = "Runtime thumbnailing proxy"
    gem.description = "Image processing via URLs"
    gem.email = "me@julik.nl"
    gem.homepage = "https://github.com/WeTransfer/image_vise"
    gem.authors = ["Julik Tarkhanov"]
    gem.license = 'MIT'

    # Do not package invisibles
    gem.files.exclude ".*"

    # When running as a gem, do not lock all of our versions
    # even though the lockfile is in the repo for running standalone
    gem.files.exclude "Gemfile.lock"
  end

  Jeweler::RubygemsDotOrgTasks.new
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ["-c", "-f progress", "-r ./spec/spec_helper.rb"]
  t.pattern = 'spec/**/*_spec.rb'
end
task :default => :spec
