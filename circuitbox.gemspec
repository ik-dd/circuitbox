# -*- encoding: utf-8 -*-
# stub: circuitbox 0.10.4 ruby lib

Gem::Specification.new do |s|
  s.name = "circuitbox".freeze
  s.version = "0.10.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fahim Ferdous".freeze]
  s.date = "2020-01-15"
  s.description = "A robust circuit breaker that manages failing external services.".freeze
  s.email = ["fahimfmf@gmail.com".freeze]
  s.files = [".gitignore".freeze, ".travis.yml".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "circuitbox.gemspec".freeze, "lib/circuitbox.rb".freeze, "lib/circuitbox/circuit_breaker.rb".freeze, "lib/circuitbox/errors/error.rb".freeze, "lib/circuitbox/errors/open_circuit_error.rb".freeze, "lib/circuitbox/errors/service_failure_error.rb".freeze, "lib/circuitbox/excon_middleware.rb".freeze, "lib/circuitbox/faraday_middleware.rb".freeze, "lib/circuitbox/memcache_store.rb".freeze, "lib/circuitbox/notifier.rb".freeze, "lib/circuitbox/railtie.rb".freeze, "lib/circuitbox/version.rb".freeze, "lib/tasks/circuits.rake".freeze, "test/circuit_breaker_test.rb".freeze, "test/circuitbox_test.rb".freeze, "test/excon_middleware_test.rb".freeze, "test/faraday_middleware_test.rb".freeze, "test/integration/faraday_middleware_test.rb".freeze, "test/integration_helper.rb".freeze, "test/notifier_test.rb".freeze, "test/service_failure_error_test.rb".freeze, "test/test_helper.rb".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A robust circuit breaker that manages failing external services.".freeze
  s.test_files = ["test/circuit_breaker_test.rb".freeze, "test/circuitbox_test.rb".freeze, "test/excon_middleware_test.rb".freeze, "test/faraday_middleware_test.rb".freeze, "test/integration/faraday_middleware_test.rb".freeze, "test/integration_helper.rb".freeze, "test/notifier_test.rb".freeze, "test/service_failure_error_test.rb".freeze, "test/test_helper.rb".freeze]

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rack>.freeze, [">= 0"])
    s.add_development_dependency(%q<gimme>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<typhoeus>.freeze, [">= 0"])
    s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_development_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_development_dependency(%q<excon>.freeze, [">= 0"])
    s.add_development_dependency(%q<logger>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler-gem_version_tasks>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<gimme>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<typhoeus>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<excon>.freeze, [">= 0"])
    s.add_dependency(%q<logger>.freeze, [">= 0"])
    s.add_dependency(%q<bundler-gem_version_tasks>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
  end
end
