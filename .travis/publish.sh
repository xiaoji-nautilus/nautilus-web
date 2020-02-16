#!/bin/bash -v

echo "Uploading nautilus web files"
ls -la $TRAVIS_BUILD_DIR/www
sshpass -e scp -r stricthostkeychecking=no $TRAVIS_BUILD_DIR/www/* root@www.guobaa.com:/var/www/html/ncs/
