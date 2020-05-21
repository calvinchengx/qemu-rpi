#!/usr/bin/env bash

source ./var.sh

qemu-img convert -f raw -O qcow2 $RPI_IMG $RPI_FS

qemu-img resize $RPI_FS +6G
