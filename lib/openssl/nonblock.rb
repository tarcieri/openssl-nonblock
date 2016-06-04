require 'openssl'
if RUBY_VERSION < '1.9.2'
    require File.dirname(__FILE__) + '/../openssl_nonblock'
end