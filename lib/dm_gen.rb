begin
  require 'minigems'
rescue LoadError
  require 'rubygems'
end

gem('templater', '~> 0.5.0')
require 'templater'

# setup manifold
module DMGen
  extend Templater::Manifold

  desc <<-eos
    Generates files for the DataMapper ORM.
  eos
end

# require generators
dir = File.join(File.dirname(__FILE__), 'generators')

require File.join(dir, 'one_file')
