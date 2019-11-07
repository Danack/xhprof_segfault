#FROM php:7.1.30-fpm-buster
FROM php:7.3.11-fpm-buster

RUN sed -ie 's/pm.max_children = 5/pm.max_children = 1/;s/pm.start_servers = 2/pm.start_servers = 1/;s/pm.max_spare_servers = 3/pm.max_spare_servers = 1/' /usr/local/etc/php-fpm.d/www.conf

RUN apt-get update -qq \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gdb valgrind procps \
    apt-transport-https autoconf bison bsdmainutils ca-certificates \
    gcc git gnupg lsb-release make pkg-config re2c wget \
    libpng-dev libjpeg-dev ghostscript libxml2-dev libfreetype6-dev \
    valgrind vim libzip-dev libssl-dev libcurl4-nss-dev

ADD https://github.com/tideways/php-xhprof-extension/releases/download/v5.0.1/tideways-xhprof_5.0.1_amd64.deb /root/tideways-xhprof_5.0.1_amd64.deb

RUN dpkg -i /root/tideways-xhprof_5.0.1_amd64.deb

RUN cp /usr/lib/tideways_xhprof/tideways_xhprof-7.3.so /usr/local/lib/php/extensions/no-debug-non-zts-20180731/tideways_xhprof-7.3.so

CMD tail -f -n 1000 /var/www/html/readme.MD
