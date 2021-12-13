# -*- encoding: utf-8 -*-
# stub: jruby-pg 0.1 java lib

Gem::Specification.new do |s|
  s.name = "jruby-pg".freeze
  s.version = "0.1"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charles Nutter".freeze, "John Shahid".freeze]
  s.date = "2017-05-09"
  s.description = "This file needs a translation of the English README. Pull requests, patches, or\nvolunteers gladly accepted.\n\nUntil such time, please accept my sincere apologies for not knowing Japanese.".freeze
  s.email = ["headius@headius.com".freeze, "jvshahid@gmail.com".freeze]
  s.extra_rdoc_files = ["Contributors.rdoc".freeze, "History.rdoc".freeze, "Manifest.txt".freeze, "README-OS_X.rdoc".freeze, "README-Windows.rdoc".freeze, "README.ja.rdoc".freeze, "README.rdoc".freeze, "POSTGRES".freeze, "LICENSE".freeze, "ext/gvl_wrappers.c".freeze, "ext/pg.c".freeze, "ext/pg_connection.c".freeze, "ext/pg_errors.c".freeze, "ext/pg_result.c".freeze]
  s.files = ["Contributors.rdoc".freeze, "History.rdoc".freeze, "LICENSE".freeze, "Manifest.txt".freeze, "POSTGRES".freeze, "README-OS_X.rdoc".freeze, "README-Windows.rdoc".freeze, "README.ja.rdoc".freeze, "README.rdoc".freeze, "ext/gvl_wrappers.c".freeze, "ext/pg.c".freeze, "ext/pg_connection.c".freeze, "ext/pg_errors.c".freeze, "ext/pg_result.c".freeze]
  s.homepage = "https://bitbucket.org/ged/ruby-pg".freeze
  s.licenses = ["BSD-2-Clause".freeze, "Ruby".freeze]
  s.rdoc_options = ["-f".freeze, "fivefish".freeze, "-t".freeze, "pg: The Ruby Interface to PostgreSQL".freeze, "-m".freeze, "README.rdoc".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "This file needs a translation of the English README".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.5.1"])
      s.add_development_dependency(%q<hoe-deveiate>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<hoe-bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.0"])
    else
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.5.1"])
      s.add_dependency(%q<hoe-deveiate>.freeze, ["~> 0.2"])
      s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
    end
  else
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.5.1"])
    s.add_dependency(%q<hoe-deveiate>.freeze, ["~> 0.2"])
    s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
  end
end
