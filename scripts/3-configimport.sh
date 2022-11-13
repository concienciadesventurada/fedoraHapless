#!/usr/bin/env bash

mkdir /home/matias/.config
mkdir /home/matias/.fonts

cp -r /home/matias/fedoraHapless/dotconfig/* /home/matias/.config/
cp -r /home/matias/fedoraHapless/home/. /home/matias/ 
cp -r /home/matias/fedoraHapless/dotfonts/. /home/matias/.fonts/

echo $separator
echo 'SUCCESS: .config and ~/ files correctly imported'
echo $separator
