# Needed to import datamapper and other gems
require 'rubygems'
require 'pathname'

# Add all external dependencies for the plugin here
gem 'dm-core', '~> <%= DMGen::DM_VERSION %>'
require 'dm-core'

# Require plugin-files
require Pathname(__FILE__).dirname.expand_path / '<%= gem_name %>' / 'is' / '<%= snake_name %>.rb'

DataMapper::Model.append_extensions(DataMapper::Is::<%= class_name %>)

# If you wish to add methods to all DM Models, use this:
# 
# DataMapper::Model.append_inclusions(DataMapper::Is::<%= class_name %>::ResourceInstanceMethods)
#
