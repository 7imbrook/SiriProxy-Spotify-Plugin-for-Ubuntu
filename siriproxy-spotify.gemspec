# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-spotify"
  s.version     = "0.0.1" 
  s.authors     = ["7imbrook
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Siriproxy plugin for spotify on Ubuntu}
  s.description = %q{Control spotify with siriproxy on a Ubuntu machine}

  s.rubyforge_project = "siriproxy-spotify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
