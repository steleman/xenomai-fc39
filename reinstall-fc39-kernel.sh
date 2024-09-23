#!/bin/bash

if [ `id -u` -ne 0 ] ; then
  echo "You must be root to do this."
  exit 1
fi

dnf install \
  kernel-core-6.10.6-100.fc39.x86_64 \
  kernel-devel-6.10.6-100.fc39.x86_64 \
  kernel-modules-6.10.6-100.fc39.x86_64 \
  kernel-modules-core-6.10.6-100.fc39.x86_64 \
  kernel-modules-extra-6.10.6-100.fc39.x86_64 \
  kernel-modules-internal-6.10.6-100.fc39.x86_64 \
  kernel-6.10.6-100.fc39.x86_64

echo "Done."

