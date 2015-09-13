#!/bin/bash
if [ ! -e /etc/php.d/apc.ini ]
then
  yes '' | pecl install apc
  echo "extension=apc.so" > /etc/php.d/apc.ini
  systemctl restart  httpd.service
  ln -s /data/public_html/ /home/vagrant/public_html
  chown -h vagrant:vagrant /home/vagrant/public_html
fi