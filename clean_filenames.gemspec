# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clean_filenames/version'

Gem::Specification.new do |spec|
  spec.name          = "clean_filenames"
  spec.version       = CleanFilenames::VERSION
  spec.authors       = ["Tamara Temple"]
  spec.email         = ["tamouse@gmail.com"]
  spec.summary       = %q{Give file name paths clean names}
  spec.description   = %q{Give file name paths clean names}
  spec.homepage      = "https://github.com/tamouse/clean_filenames"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('methadone', '~> 1.3.2')

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  
end
