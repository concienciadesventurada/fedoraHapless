#!/usr/bin/env bash

mkdir /home/matias/.config

cp -r /home/matias/fedoraHapless/dotconfig/* /home/matias/.config/
cp -r /home/matias/fedoraHapless/home/. /home/matias/ 
sudo cp -r /home/matias/fedoraHapless/fonts/* /usr/share/fonts/

echo $separator
echo 'SUCCESS: .config and ~/ files correctly imported'
echo $separator
