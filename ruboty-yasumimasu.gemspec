
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/yasumimasu/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-yasumimasu'
  spec.version       = Ruboty::Yasumimasu::VERSION
  spec.authors       = ['Fukaya Temma']
  spec.email         = ['ride.or.die.2215@gmail.com']

  spec.summary       = 'Add day off plans to Google calendar and spreadsheet from Ruboty'
  spec.description   = 'Add day off plans to Google calendar and spreadsheet from Ruboty'
  spec.homepage      = 'https://github.com/Pegasus204/ruboty-yasumimasu'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
