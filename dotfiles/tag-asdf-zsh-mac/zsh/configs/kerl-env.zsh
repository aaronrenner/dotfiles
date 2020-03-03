# Kerl Elixir build settings
#
# Disabling hipe because I can't get it to compile on Mac OS 10.15.3
# https://github.com/kerl/kerl/issues/320#issuecomment-585944947
export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl) --disable-hipe"
