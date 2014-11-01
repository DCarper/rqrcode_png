# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rqrcode_png/version"

Gem::Specification.new do |s|
  s.name        = "rqrcode_png"
  s.version     = RqrcodePng::VERSION
  s.authors     = ["Dan Carper"]
  s.email       = ["djcarper@me.com"]
  s.homepage    = ""
  s.summary     = %q{Produces a .png from a given QR Code}
  s.description = %q{Glues rQRCode together with chunky_png}
  s.licenses     = ['MIT']

  s.rubyforge_project = "rqrcode_png"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

	s.add_development_dependency "rake"
	s.add_dependency "chunky_png"
	s.add_dependency "rqrcode"

end
