# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{modify}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexander Glushkov"]
  s.date = %q{2011-07-28}
  s.description = %q{Modify model fields before validation}
  s.email = %q{cutalion@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/modify.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "init.rb", "lib/modify.rb", "modify.gemspec"]
  s.homepage = %q{http://github.com/cutalion/modify}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Modify", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{modify}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Modify model fields before validation}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end