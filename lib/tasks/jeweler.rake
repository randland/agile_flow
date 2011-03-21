require 'jeweler'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "agile_flow"
  gem.homepage = "http://github.com/randland/agile_flow"
  gem.license = "MIT"
  gem.summary = %Q{A tool for handling the everyday tasks of being Agile}
  gem.description = %Q{This gem provides command line support for starting and finishing features in Pivotal Tracker. It includes commit message support for pairing, as well as Harvest timer components. The Git-Flow method of creating and completing features is used, and Cucumber features may be pulled and pushed via Pivotal Tracker.}
  gem.email = "randland@gmail.com"
  gem.authors = ["Nick Karpenske"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end

Jeweler::RubygemsDotOrgTasks.new
