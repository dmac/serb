Gem::Specification.new do |s|
  s.name = "serb"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">=0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 2 if s.respond_to? :specification_version=

  s.authors = "Daniel MacDougall"
  s.email = "dmacdougall@gmail.com"
  s.homepage = "https://github.com/dmacdougall/serb"
  s.rubyforge_project = "serb"

  s.summary = "An interactive tool for generating files from .erb templates"
  s.description = "An interactive tool for generating files from .erb templates"

  s.executables = ["serb"]
  s.files = %w[
    README.md
    Rakefile
    serb.gemspec
    bin/serb
  ]
end
