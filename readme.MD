
# Example php-fpm config crash


In a 2nd CLI window, bash into the box

```
docker-compose exec -T php bash
``` 


Then run php-fpm with:

```
php-fpm \
  --nodaemonize \
  --fpm-config=./php-fpm_www_crash.conf \
  -c ./php_empty.ini
```

The worker processes should be continually created and instantly segfaulting.
