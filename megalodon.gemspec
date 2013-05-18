$:.push File.expand_path("../lib", __FILE__)
require "megalodon/version"

Gem::Specification.new do |s|
  s.name              = "megalodon"
  s.version           = Megalodon::VERSION
  s.summary           = "Setup a modern PHP development environment on Mac."
  s.homepage          = "http://msonnabaum.github.com/megalodon/"
  s.authors           = ['Mark Sonnabaum', 'Glenn Pratt']
  s.files             = `git ls-files`.split($\)
  s.executables       = `git ls-files bin | cut -c5-`.split($\)

  s.add_dependency "chef", "~> 10.26.0"
end
