#!/bin/bash

export HERE="`pwd`"
export REDHAT="${HERE}/kernel-6.10.11/linux-6.10.11-300.fc39.x86_64"
export KERNEL_RPM="kernel-6.10.11-300.xenomai.fc39.src.rpm"
export FLAVOR="fedora"
export FEDPKG_LOCAL_LOG="${HERE}/fedpkg-local.log"

echo "fedpkg --debug --verbose --release f39 local > ${FEDPKG_LOCAL_LOG}"
fedpkg --debug --verbose --release f39 local > ${FEDPKG_LOCAL_LOG} 2>&1
ret=$?
echo "fedpkg local exited with status $ret."

export MACHINE="`uname -m`"
if [ $ret -eq 0 ] ; then
  if [ -f ./${KERNEL_RPM} ] && [ -d ./${MACHINE} ] ; then
    mv ./${KERNEL_RPM} ./${MACHINE}/
  fi
fi

