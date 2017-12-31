
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aob_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "aob_view_tool"
  spec.version       = AobViewTool::VERSION
  spec.authors       = ["André O. Brown"]
  spec.email         = ["andre@aob.com.jm"]

  spec.summary       = %q{A collection of view specific methods that I use for my applications.}
  spec.description   = %q{Provides generated HTML info for my views.}
  spec.homepage      = "https://www.aob.com.jm"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
