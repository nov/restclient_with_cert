# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "restclient_with_cert"
  s.version     = File.read('VERSION')
  s.authors     = ["nov matake"]
  s.email       = ["nov@matake.jp"]
  s.homepage    = "http://github.com/nov/restclient_with_cert"
  s.summary     = %q{RestClient with embedded cert}
  s.description = %q{RestClient with embedded cert}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency "rest-client", ">= 1.6"
  s.add_development_dependency "rake", ">= 0.8"
  s.add_development_dependency "rcov", ">= 0.9"
  s.add_development_dependency "rspec", ">= 2"
end
