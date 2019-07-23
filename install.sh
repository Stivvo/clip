#!/bin/bash

ME=$(whoami)
D="/home/${ME}/bin" #install directory

if [ -z $(ls -l /usr/bin | grep xclip) ]
then
    apt-get install xclip
else
    echo "xclip already installed"
fi

if [ ! -d $D ]
then
    mkdir $D
fi

mkdir a/

export PATH="${D}:$PATH"

chmod +x clip
chmod +x clip-daemon.sh

cp clip "${D}/"
chmod +x "${D}/clip"

echo "clip installed succesfully"
