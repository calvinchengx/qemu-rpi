#!/usr/bin/env bash

source ./var.sh

$QEMU -kernel "./$RPI_KERNEL" \
-cpu arm1176 -m 256 \
-M versatilepb -no-reboot -serial stdio \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-hda "./$RPI_FS" \
-net user,hostfwd=tcp::5022-:22 -net nic
