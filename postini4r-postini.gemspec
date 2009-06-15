# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{postini}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kenneth Kalmer"]
  s.date = %q{2009-06-15}
  s.description = %q{A Ruby wrapper library to make the Postini SOAP API more palatable.  Postini is the world leader in email message scanning, filtering and archiving. This library provides users of Postini with a convenient Ruby library that  exposes the Postini SOAP API (Early Access Program) through more familiar Rubyisms.}
  s.email = ["kenneth.kalmer@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "TODO", "features/development.feature", "features/step_definitions/common_steps.rb", "features/support/common.rb", "features/support/env.rb", "features/support/matchers.rb", "lib/postini.rb", "lib/postini/automated_batch_service.rb", "lib/postini/configuration_check.rb", "lib/postini/endpoint_resolver_service.rb", "lib/postini/endpoints.rb", "lib/postini/exceptions.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "spec/exceptions_spec.rb", "spec/postini_spec.rb", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake", "tasks/website.rake", "vendor/automatedbatch.wsdl", "vendor/endpointresolver.wsdl"]
  s.has_rdoc = true
  s.homepage = %q{http://postini4r.rubyforge.org/}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{postini4r}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Ruby wrapper library to make the Postini SOAP API more palatable}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.4.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
