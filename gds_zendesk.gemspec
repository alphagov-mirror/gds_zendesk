# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gds_zendesk/version'

Gem::Specification.new do |gem|
  gem.name          = "gds_zendesk"
  gem.version       = GDSZendesk::VERSION
  gem.authors       = ["GOV.UK Dev"]
  gem.email         = ["govuk-dev@digital.cabinet-office.gov.uk"]
  gem.description   = %q{Client and models for communicating with Zendesk}
  gem.summary       = %q{Client and models for communicating with Zendesk}
  gem.homepage      = "https://github.com/alphagov/gds_zendesk"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'null_logger', '~> 0'
  gem.add_dependency 'zendesk_api', '~> 1.27'

  gem.add_development_dependency 'rake', '~> 10'
  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'webmock', '~> 2'
end
