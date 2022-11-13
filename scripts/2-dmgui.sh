#!/usr/bin/env bash

separator="-----------------------------------------------------------------------------------------"

target=$(systemctl get-default)

echo "$separator"
echo "Installing and setting up graphical login"
echo "$separator"

dnf install -y lightdm \
 lightdm-gtk-greeter \
 lightdm-gtk-greeter-settings

dnf group install base-x

function setgraphicallogin()
{
  systemctl enable lightdm 
  systemctl set-default graphical.target

  guitarget=$(systemctl get-default)
}

setgraphicallogin

if [ "$target" = "$guitarget" ]; then
  echo "$separator"
  echo "SUCCESS: Graphical login set up."
  echo $separator
else
  echo "$separator"
  echo "WARNING: Setting up graphical login FAILED."
  echo "$separator"
