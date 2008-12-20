# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tunnelr}
  s.version = "0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["elliottcable"]
  s.date = %q{2008-12-20}
  s.default_executable = %q{tunnelr}
  s.description = %q{Making SSH tunnels easy since… about thirty minutes ago, or so}
  s.email = ["tunnelr@elliottcable.com"]
  s.executables = ["tunnelr"]
  s.extra_rdoc_files = ["bin/tunnelr", "lib/tunnelr.rb", "README.markdown"]
  s.files = ["bin/tunnelr", "lib/tunnelr.rb", "Rakefile.rb", "README.markdown", ".manifest", "tunnelr.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/elliottcable/tunnelr}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Tunnelr", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{tunnelr}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Making SSH tunnels easy since… about thirty minutes ago, or so}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<elliottcable-echoe>, [">= 0", "= 3.0.2"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<stringray>, [">= 0"])
    else
      s.add_dependency(%q<elliottcable-echoe>, [">= 0", "= 3.0.2"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<stringray>, [">= 0"])
    end
  else
    s.add_dependency(%q<elliottcable-echoe>, [">= 0", "= 3.0.2"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<stringray>, [">= 0"])
  end
end
