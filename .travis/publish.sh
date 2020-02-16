#!/bin/bash -v

echo "Uploading nautilus web files"
if [ -d "$TRAVIS_BUILD_DIR/www" ]; then
  ls -la $TRAVIS_BUILD_DIR/www
  sshpass -e scp -r stricthostkeychecking=no $TRAVIS_BUILD_DIR/www/* root@www.guobaa.com:/var/www/html/ncs/
  echo "folder www upload finished."
else
  echo "folder www is not exist."
fi
