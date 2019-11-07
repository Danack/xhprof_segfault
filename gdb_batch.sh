gdb -batch \
  -ex "set follow-fork-mode child" \
  -ex "set detach-on-fork off" \
  -ex "run" \
  -ex "bt" \
  --args php-fpm \
  --nodaemonize \
  --fpm-config=./php-fpm_www_crash.conf \
  -c ./php_empty.ini


echo "Check 'ps aux' - GDB is still running..."