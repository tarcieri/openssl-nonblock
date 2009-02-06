require 'mkmf'

dir_config("openssl_nonblock")
have_library("c", "main")

if have_header('openssl/ssl.h')
  $defs << '-DHAVE_OPENSSL_SSL_H'
  $LIBS << '-lssl -lcrypto'
end

create_makefile("openssl_nonblock")