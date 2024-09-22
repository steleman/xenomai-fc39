#!/bin/bash

if [ `id -u` -ne 0 ] ; then
  echo "You must be root to do this."
  exit 1
fi

grub2-mkconfig -o /boot/grub2/grub.cfg

