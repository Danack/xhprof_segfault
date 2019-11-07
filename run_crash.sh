

# This is the command to run php-fpm and make it crash,
# but ctrl+c'ing this is kind of broken.
php-fpm \
  --nodaemonize \
  --fpm-config=./php-fpm_www_crash.conf \
  -c ./php_empty.ini