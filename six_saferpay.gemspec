
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "six_saferpay/version"

Gem::Specification.new do |spec|
  spec.name          = "six_saferpay"
  spec.version       = SixSaferpay::VERSION
  spec.authors       = ["Felix Langenegger"]
  spec.email         = ["felix.langenegger@fadendaten.ch"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/fadendaten/six_saferpa://github.com/fadendaten/six_saferpay"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '~> 5.0', '>= 5.0.0.0'


  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4.0', '>= 4.0.0'
  spec.add_development_dependency 'webmock', '~> 3.5', '>= 3.5.1'
  spec.add_development_dependency 'dotenv', '~> 2.7', '>= 2.7'
  spec.add_development_dependency 'pry', '~> 0.12.0'
  spec.add_development_dependency 'tty-prompt', '~> 0.18'
  spec.add_development_dependency 'simplecov', '~> 0.16'

end
