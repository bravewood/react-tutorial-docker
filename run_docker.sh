#!/bin/bash

CURRENTDIR=`pwd`

docker run \
    --name my-react \
    --tty=true \
    -v $CURRENTDIR/lib/react-tutorial-master:/var/www/html/react-tutorial-master \
    -d \
    -p 3000:3000 \
    -i \
    -t bravewood/react:latest \
    /var/www/html/boot_server.sh

echo "****** To use the sample app, open the link below. ******"
echo http://`docker-machine ip default`:3000
