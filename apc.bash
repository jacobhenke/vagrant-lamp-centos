#!/bin/bash
if [ ! -e /etc/php.d/apc.ini ]
then
  yes '' | pecl install apc
  echo "extension=apc.so" > /etc/php.d/apc.ini
  systemctl restart  httpd.service
fi