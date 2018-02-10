
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ambient-weather-sdk/version'

Gem::Specification.new do |spec|
  spec.name          = 'ambient-weather-sdk'
  spec.version       = AmbientWeatherSDK::VERSION
  spec.authors       = ['Michael Filbin']
  spec.email         = ['michael.filbin@gmail.com']

  spec.summary       = 'A Ruby SDK for Interacting with the Ambient Weather API'
  spec.description   = <<-DESC
  The Ambient Weather SDK enabled developers to write applications for interacting
  with personal weather station (pws). With this library, you can request details
  about current weather conditions or historical weather data. You will need both
  an API key and an Application key to use this library. Visit
  https://ambientweather.docs.apiary.io for details.
  DESC
  spec.homepage      = 'https://github.com/mpfilbin/AmbientWeatherRubySDK'
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
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.52.1'
end
