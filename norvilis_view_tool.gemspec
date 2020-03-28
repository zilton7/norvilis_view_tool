require_relative 'lib/norvilis_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "norvilis_view_tool"
  spec.version       = NorvilisViewTool::VERSION
  spec.authors       = ["Zil Norvilis"]
  spec.email         = ["zilasino27@gmail.com"]

  spec.summary       = %q{This gem dynamically adds copyright year, name and message.}
  spec.description   = %q{This gem dynamically adds copyright year, name and message.}
  spec.homepage      = "https://imwithzil.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://imwithzil.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://imwithzil.com"
  spec.metadata["changelog_uri"] = "https://imwithzil.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
