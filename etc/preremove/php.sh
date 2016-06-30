if [ -f /etc/php5/php.ini ] && cmp -s /etc/defaults/etc/php5/php.ini /etc/php5/php.ini
then
    rm /etc/php5/php.ini
fi

if [ -f /etc/php5/php-fpm.conf ] && cmp -s /etc/defaults/etc/php5/php-fpm.conf /etc/php5/php-fpm.conf
then
    rm /etc/php5/php-fpm.conf
fi

if [ -f /etc/httpd/conf.d/php5.conf ] && cmp -s /etc/defaults/etc/httpd/conf.d/php5.conf /etc/httpd/conf.d/php5.conf
then
    rm /etc/httpd/conf.d/php5.conf
fi

