#!/bin/bash

if [ `id -u` -ne 0 ] ; then
  echo "You must be root to do this."
  exit 1
fi

export TSBK="`date +%Y%m%d`"
export UNAMER="6.10.10-100.xenomai.fc39.x86_64"

if [ ! -f /boot/initramfs-${UNAMER}.img.${TSBK} ] ; then
  if [ -f /boot/initramfs-${UNAMER}.img ] ; then
    mv /boot/initramfs-${UNAMER}.img /boot/initramfs-${UNAMER}.img.${TSBK}
  fi
fi

echo "dracut /boot/initramfs-${UNAMER}.img ${UNAMER}"
dracut /boot/initramfs-${UNAMER}.img ${UNAMER}

