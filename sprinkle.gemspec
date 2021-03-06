# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sprinkle}
  s.version = "0.4.2cb"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Khash Sajadi"]
  s.date = %q{2012-06-28}
  s.description = %q{Ruby DSL based software provisioning tool}
  s.email = %q{khash@thecloudblocks.com}
  s.executables = ["sprinkle"]
  s.extra_rdoc_files = [
    "README.markdown",
  ]
  s.files = [
    "CREDITS",
    "MIT-LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "bin/sprinkle",
    "examples/packages/build_essential.rb",
    "examples/packages/databases/mysql.rb",
    "examples/packages/databases/sqlite3.rb",
    "examples/packages/phusion.rb",
    "examples/packages/ruby/rails.rb",
    "examples/packages/ruby/ruby.rb",
    "examples/packages/ruby/rubygems.rb",
    "examples/packages/scm/git.rb",
    "examples/packages/scm/subversion.rb",
    "examples/packages/servers/apache.rb",
    "examples/rails/README",
    "examples/rails/deploy.rb",
    "examples/rails/packages/database.rb",
    "examples/rails/packages/essential.rb",
    "examples/rails/packages/rails.rb",
    "examples/rails/packages/scm.rb",
    "examples/rails/packages/search.rb",
    "examples/rails/packages/server.rb",
    "examples/rails/rails.rb",
    "examples/sprinkle/sprinkle.rb",
    "lib/sprinkle.rb",
    "lib/sprinkle/actors/actors.rb",
    "lib/sprinkle/actors/capistrano.rb",
    "lib/sprinkle/actors/local.rb",
    "lib/sprinkle/actors/ssh.rb",
    "lib/sprinkle/actors/vlad.rb",
    "lib/sprinkle/configurable.rb",
    "lib/sprinkle/deployment.rb",
    "lib/sprinkle/extensions/arbitrary_options.rb",
    "lib/sprinkle/extensions/array.rb",
    "lib/sprinkle/extensions/blank_slate.rb",
    "lib/sprinkle/extensions/dsl_accessor.rb",
    "lib/sprinkle/extensions/string.rb",
    "lib/sprinkle/extensions/symbol.rb",
    "lib/sprinkle/installers/apt.rb",
    "lib/sprinkle/installers/binary.rb",
    "lib/sprinkle/installers/brew.rb",
    "lib/sprinkle/installers/bsd_port.rb",
    "lib/sprinkle/installers/deb.rb",
    "lib/sprinkle/installers/freebsd_pkg.rb",
    "lib/sprinkle/installers/freebsd_portinstall.rb",
    "lib/sprinkle/installers/gem.rb",
    "lib/sprinkle/installers/group.rb",
    "lib/sprinkle/installers/install_package.rb",
    "lib/sprinkle/installers/installer.rb",
    "lib/sprinkle/installers/mac_port.rb",
    "lib/sprinkle/installers/openbsd_pkg.rb",
    "lib/sprinkle/installers/opensolaris_pkg.rb",
    "lib/sprinkle/installers/pacman.rb",
    "lib/sprinkle/installers/push_text.rb",
    "lib/sprinkle/installers/rake.rb",
    "lib/sprinkle/installers/replace_text.rb",
    "lib/sprinkle/installers/rpm.rb",
    "lib/sprinkle/installers/runner.rb",
    "lib/sprinkle/installers/smart.rb",
    "lib/sprinkle/installers/source.rb",
    "lib/sprinkle/installers/thor.rb",
    "lib/sprinkle/installers/transfer.rb",
    "lib/sprinkle/installers/user.rb",
    "lib/sprinkle/installers/yum.rb",
    "lib/sprinkle/installers/zypper.rb",
    "lib/sprinkle/package.rb",
    "lib/sprinkle/policy.rb",
    "lib/sprinkle/script.rb",
    "lib/sprinkle/verifiers/apt.rb",
    "lib/sprinkle/verifiers/brew.rb",
    "lib/sprinkle/verifiers/directory.rb",
    "lib/sprinkle/verifiers/executable.rb",
    "lib/sprinkle/verifiers/file.rb",
    "lib/sprinkle/verifiers/package.rb",
    "lib/sprinkle/verifiers/process.rb",
    "lib/sprinkle/verifiers/rpm.rb",
    "lib/sprinkle/verifiers/ruby.rb",
    "lib/sprinkle/verifiers/symlink.rb",
    "lib/sprinkle/verifiers/users_groups.rb",
    "lib/sprinkle/verify.rb",
    "script/console",
    "script/destroy",
    "script/generate",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/sprinkle/actors/capistrano_spec.rb",
    "spec/sprinkle/actors/local_spec.rb",
    "spec/sprinkle/configurable_spec.rb",
    "spec/sprinkle/deployment_spec.rb",
    "spec/sprinkle/extensions/array_spec.rb",
    "spec/sprinkle/extensions/string_spec.rb",
    "spec/sprinkle/installers/apt_spec.rb",
    "spec/sprinkle/installers/binary_spec.rb",
    "spec/sprinkle/installers/brew_spec.rb",
    "spec/sprinkle/installers/bsd_port_spec.rb",
    "spec/sprinkle/installers/freebsd_pkg_spec.rb",
    "spec/sprinkle/installers/freebsd_portinstall_spec.rb",
    "spec/sprinkle/installers/gem_spec.rb",
    "spec/sprinkle/installers/installer_spec.rb",
    "spec/sprinkle/installers/mac_port_spec.rb",
    "spec/sprinkle/installers/openbsd_pkg_spec.rb",
    "spec/sprinkle/installers/opensolaris_pkg_spec.rb",
    "spec/sprinkle/installers/push_text_spec.rb",
    "spec/sprinkle/installers/rake_spec.rb",
    "spec/sprinkle/installers/replace_text_spec.rb",
    "spec/sprinkle/installers/rpm_spec.rb",
    "spec/sprinkle/installers/runner_spec.rb",
    "spec/sprinkle/installers/source_spec.rb",
    "spec/sprinkle/installers/thor_spec.rb",
    "spec/sprinkle/installers/transfer_spec.rb",
    "spec/sprinkle/installers/yum_spec.rb",
    "spec/sprinkle/installers/zypper_spec.rb",
    "spec/sprinkle/package_spec.rb",
    "spec/sprinkle/policy_spec.rb",
    "spec/sprinkle/script_spec.rb",
    "spec/sprinkle/sprinkle_spec.rb",
    "spec/sprinkle/verify_spec.rb",
    "sprinkle.gemspec"
  ]
  s.homepage = %q{http://github.com/crafterm/sprinkle}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sprinkle}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Ruby DSL based software provisioning tool}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.5"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<highline>, [">= 1.4.0"])
      s.add_runtime_dependency(%q<capistrano>, [">= 2.5.5"])
    else
      s.add_dependency(%q<rspec>, [">= 2.5"])
      s.add_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_dependency(%q<highline>, [">= 1.4.0"])
      s.add_dependency(%q<capistrano>, [">= 2.5.5"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.5"])
    s.add_dependency(%q<activesupport>, [">= 2.0.2"])
    s.add_dependency(%q<highline>, [">= 1.4.0"])
    s.add_dependency(%q<capistrano>, [">= 2.5.5"])
  end
end

