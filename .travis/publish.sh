#!/bin/bash -v

echo "Uploading nautilus web files"
if [ -d "$TRAVIS_BUILD_DIR/www" ]; then
  ls -la $TRAVIS_BUILD_DIR/www
  cd $TRAVIS_BUILD_DIR/www && tar -czvf /tmp/www.tar.gz *
  sshpass -e scp -o stricthostkeychecking=no /tmp/www.tar.gz root@www.guobaa.com:/tmp/
  sshpass -e ssh -p22 root@www.guobaa.com tar -xzvf /tmp/www.tar.gz -C /var/www/html/ncs
  echo "folder www upload finished."
else
  echo "folder www is not exist."
fi
