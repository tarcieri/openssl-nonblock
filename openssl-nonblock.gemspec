require 'rubygems'

GEMSPEC = Gem::Specification.new do |s|
  s.name = "openssl-nonblock"
  s.version = "0.1.0"
  s.authors = "Tony Arcieri"
  s.email = "tony@medioh.com"
  s.date = "2009-02-06"
  s.summary = "Non-blocking support for Ruby OpenSSL"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.6'

  # Gem contents
  s.files = Dir.glob("{lib,ext}/**/*.{rb,c,h}") + ['Rakefile', 'openssl-nonblock.gemspec']

  # RubyForge info
  s.homepage = "http://rev.rubyforge.org"
  s.rubyforge_project = "rev"

  # Extensions
  s.extensions = %w[ext/extconf.rb]
end