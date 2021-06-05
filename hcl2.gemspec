# frozen_string_literal: true

require_relative "lib/hcl2/version"

Gem::Specification.new do |spec|
  spec.name          = "hcl2"
  spec.version       = Hcl2::VERSION
  spec.authors       = ["mo khan"]
  spec.email         = ["mo@mokhan.ca"]

  spec.summary       = "A HCL v2 parser."
  spec.description   = "A HCL v2 parser."
  spec.homepage      = "https://github.com/xlgmokha/hcl2"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/xlgmokha/hcl2"
  spec.metadata["changelog_uri"] = "https://github.com/xlgmokha/hcl2/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir.glob("exe/*") +
      Dir.glob("lib/**/**/*.{rb}") +
      Dir.glob("*.{md,gemspec,txt}")
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "parslet", "~> 2.0"
end
