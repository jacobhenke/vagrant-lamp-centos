#!/bin/bash
if ! yum repolist | grep -q 'puppet'
then
  echo "Bootstrapping the cm... "
  rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
  yum install puppet php-pear -y
fi
echo "Done!"