# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google-analytics-rails"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benoit Garret", "Ufuk Kayserilioglu"]
  s.date = "2016-02-27"
  s.description = "Rails helpers to manage google analytics tracking"
  s.email = ["benoit.garret@gadz.org", "ufuk@paralaus.com"]
  s.homepage = "https://github.com/bgarret/google-analytics-rails"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "1.8.23"
  s.summary = "Rails helpers to manage google analytics tracking"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
