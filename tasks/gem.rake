require 'rake/gempackagetask'
load File.dirname(__FILE__) + '/../openssl-nonblock.gemspec'

Rake::GemPackageTask.new(GEMSPEC) do |pkg|
  pkg.need_tar = true
end