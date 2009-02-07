require 'mkmf'

dir_config("openssl_nonblock")
have_library("c", "main")

if have_header('openssl/ssl.h')
  $defs << '-DHAVE_OPENSSL_SSL_H'
  $LIBS << '-lssl -lcrypto'
end

if have_func('rb_str_set_len')
  $defs << '-DHAVE_RB_STR_SET_LEN'
end

$defs << "-DRUBY_VERSION_CODE=#{RUBY_VERSION.gsub(/\D/, '')}"

create_makefile("openssl_nonblock")