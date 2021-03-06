# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-gen}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Stott"]
  s.date = %q{2009-07-10}
  s.default_executable = %q{dm-gen}
  s.description = %q{Simple commandline tool for generating dm models}
  s.email = %q{jonathan.stott@gmail.com}
  s.executables = ["dm-gen"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "README.rdoc",
     "bin/dm-gen",
     "lib/dm_gen.rb",
     "lib/generators/adapter.rb",
     "lib/generators/is.rb",
     "lib/generators/one_file.rb",
     "lib/templates/adapter/History.txt",
     "lib/templates/adapter/LICENSE",
     "lib/templates/adapter/Manifest.txt",
     "lib/templates/adapter/README.txt",
     "lib/templates/adapter/Rakefile",
     "lib/templates/adapter/TODO",
     "lib/templates/adapter/lib/%adapter_file%.rb",
     "lib/templates/adapter/lib/%adapter_file%/version.rb",
     "lib/templates/adapter/spec/integration/%adapter_file%_spec.rb",
     "lib/templates/adapter/spec/spec.opts",
     "lib/templates/adapter/spec/spec_helper.rb",
     "lib/templates/adapter/tasks/install.rb",
     "lib/templates/adapter/tasks/spec.rb",
     "lib/templates/is/History.txt",
     "lib/templates/is/LICENSE",
     "lib/templates/is/Manifest.txt",
     "lib/templates/is/README.txt",
     "lib/templates/is/Rakefile",
     "lib/templates/is/TODO",
     "lib/templates/is/lib/%gem_name%.rb",
     "lib/templates/is/lib/%gem_name%/is/%snake_name%.rb",
     "lib/templates/is/lib/%gem_name%/is/version.rb",
     "lib/templates/is/spec/integration/%snake_name%_spec.rb",
     "lib/templates/is/spec/spec.opts",
     "lib/templates/is/spec/spec_helper.rb",
     "lib/templates/is/tasks/install.rb",
     "lib/templates/is/tasks/spec.rb",
     "lib/templates/one_file.rb",
     "spec/adapter_spec.rb",
     "spec/dm_gen_spec.rb",
     "spec/is_plugin_spec.rb",
     "spec/one_file_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/namelessjon/dm-gen}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Simple commandline tool for generating dm models}
  s.test_files = [
    "spec/is_plugin_spec.rb",
     "spec/dm_gen_spec.rb",
     "spec/adapter_spec.rb",
     "spec/spec_helper.rb",
     "spec/one_file_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<templater>, ["~> 0.5.0"])
    else
      s.add_dependency(%q<templater>, ["~> 0.5.0"])
    end
  else
    s.add_dependency(%q<templater>, ["~> 0.5.0"])
  end
end
