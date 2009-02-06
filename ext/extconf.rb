require 'mkmf'

dir_config("openssl_nonblock")
have_library("c", "main")

create_makefile("openssl_nonblock")