Gem::Specification.new do |spec|
  spec.name          = "irc_colors"
  spec.version       = "0.0.1"
  spec.authors       = ["Jonathan Amiez"]
  spec.email         = ["jonathan.amiez@gmail.com"]
  spec.description   = "String refinement for IRC colored output"
  spec.summary       = "String refinement for IRC colored output"
  spec.homepage      = "https://github.com/josqu4red"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
end
