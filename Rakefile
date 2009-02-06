require 'rake'
require 'rake/clean'

Dir['tasks/**/*.rake'].each { |task| load task }

task :default => :compile

CLEAN.include ["**/*.o", "**/*.log", "pkg"]
CLEAN.include ["ext/Makefile", "**/*nonblock*.#{Config::CONFIG['DLEXT']}"]