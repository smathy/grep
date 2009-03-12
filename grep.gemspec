# -*- encoding: utf-8 -*-

module_name = "grep"

Gem::Specification.new do |s|
  s.version = "0.0.2"
  s.author = "Jason King"
  s.summary = %q{grep - grep library done the Ruby way by extending Dir and File}

	s.files = %w{README.markdown lib/grep.rb}

	s.test_files = %w{
    test/data/first.txt
    test/data/third/first.txt
    test/grep.rb
  }

  s.name = module_name
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = Time.now.strftime("%Y-%m-%d")
  s.email = %q{jk@handle.it}
  s.has_rdoc = true
  s.homepage = "http://github.com/JasonKing/#{module_name}"
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = Gem::RubyGemsVersion
	s.platform         = Gem::Platform::RUBY

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      #s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
    else
      #s.add_dependency(%q<mime-types>, [">= 1.15"])
    end
  else
    #s.add_dependency(%q<mime-types>, [">= 1.15"])
  end
end

