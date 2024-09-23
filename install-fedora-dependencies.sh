#!/bin/bash

echo "sudo dnf install -y audit-libs-devel fuse-devel libbabeltrace-devel libbpf-devel libcap-devel libcap-ng-devel libmnl-devel libnl3-devel newt-devel pciutils-devel xmlto glibc-static perl-generators"
sudo dnf install -y audit-libs-devel fuse-devel libbabeltrace-devel libbpf-devel libcap-devel libcap-ng-devel libmnl-devel libnl3-devel newt-devel pciutils-devel xmlto glibc-static perl-generators

echo "sudo dnf install -y bpftool gcc-plugin-devel pesign"
sudo dnf install -y bpftool gcc-plugin-devel pesign

echo "sudo dnf localinstall ./kernel-headers-uapi-6.10.10-100.fc37.x86_64.rpm"
sudo dnf ./localinstall kernel-headers-uapi-6.10.10-100.fc37.x86_64.rpm
