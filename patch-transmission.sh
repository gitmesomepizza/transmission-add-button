#!/bin/bash
#this script assumes the transmission web directory is /usr/share/transmission/web/
#ensure that an image named toolbar-pizza.png icon (34x34px) and the pizza.js are both in the pwd
if [ "$EUID" -ne 0 ]; then
    echo "Script must be run as root"
    exit
fi
sudo cp ./toolbar-pizza.png /usr/share/transmission/web/style/transmission/images/toolbar-pizza.png
sudo cp ./pizza.js /usr/share/transmission/web/javascript/pizza.js
if ! $(grep -q 'pizza.js' "/usr/share/transmission/web/index.html"); then
    sudo cp /usr/share/transmission/web/index.html /usr/share/transmission/web/index.html.bak
    sudo sed -i 's/\t<\/head>/<script type="text\/javascript" src=".\/javascript\/pizza.js"><\/script>\n&/' /usr/share/transmission/web/index.html
fi
