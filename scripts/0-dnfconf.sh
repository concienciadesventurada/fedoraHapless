#!/usr/bin/env bash

separator="-----------------------------------------------------------------------------------------"

date=$(date -r /etc/dnf/dnf.conf +%s)

function catdnfconf()
{
  echo "fastestmirror=True
max_paralell_downloads=5
defaultyes=True
keepcache=True">>/etc/dnf/dnf.conf

  datemod=$(date -r /etc/dnf/dnf.conf +%s)
}

catdnfconf

if [[ $datemod -gt $date ]]; then
  echo $separator
  echo "SUCCESS: dnf.conf modified correctly"
  echo $separator
else
  echo $separator
  echo "WARNING: 0-dnfconf.sh wasn't able to modify /etc/dnf/dnf.conf"
  echo $separator
fi
