
# Example php-fpm config crash


In a 2nd CLI window, bash into the box

```
docker-compose exec php bash
``` 


Then run php-fpm with:

```
php-fpm  --nodaemonize  --fpm-config=./php-fpm_www_crash.conf -c ./php_empty.ini
```

The child/worker process that is launched will continually segfault.

