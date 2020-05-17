#!/usr/bin/env bash

# error on exit
set -e
set -x

# my custom config
cp whitelist myhosts steven-black-hosts/

# regenerate hosts
cd steven-black-hosts/
python3 updateHostsFile.py -a -n -o alternates/fakenews-gambling-porn-social/ -e fakenews gambling porn social
cd ..

# copy custom hosts file back to root
cp steven-black-hosts/alternates/fakenews-gambling-porn-social/hosts hosts-latest

# remove unnecessary directory
rm -rf steven-black-hosts

# update hosts
# sudo /usr/bin/cp /etc/hosts /etc/hosts.bak
# sudo /usr/bin/cp hosts-latest /etc/hosts

# done
echo "SUCCESS!"

