#!/bin/bash

D="/home/fsl/bin" #install directory

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

PATH=$PATH:$HOME/bin
export PATH

chmod +x clip
chmod +x clip-daemon.sh

cp clip "${D}/"
chmod +x "${D}/clip"

echo "clip installed succesfully"
