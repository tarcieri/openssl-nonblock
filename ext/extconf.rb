require 'mkmf'

dir_config("openssl_nonblock")
have_library("c", "main")

if have_header('openssl/ssl.h')
  $LIBS << '-lssl -lcrypto'
else
  STDERR.puts("*** Error: OpenSSL header files are required to build openssl-nonblock")
  exit 1
end

if have_func('rb_str_set_len')
  $defs << '-DHAVE_RB_STR_SET_LEN'
end

$defs << "-DRUBY_VERSION_CODE=#{RUBY_VERSION.gsub(/\D/, '')}"

create_makefile("openssl_nonblock")