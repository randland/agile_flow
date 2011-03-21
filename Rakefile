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
$:.unshift File.expand_path('lib')

def load_tasks(tasks)
  load tasks
rescue Exception => exception
  $stderr << "** loading #{tasks.sub(File.expand_path('.'),'')} failed: "
  case exception
  when LoadError
    $stderr << "to use, install the gems it requires\n"
  else
    $stderr << ([exception.message] + exception.backtrace[0..2]).join("\n ") << "\n\n"
  end
end

Dir["lib/tasks/*.rake"].sort.each {|t| load_tasks t}

task :default => [:spec, :cucumber]
