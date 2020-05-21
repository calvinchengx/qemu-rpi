#!/usr/bin/env bash

export QEMU=$(which qemu-system-arm)

export RPI_VERSION=2017-08-16
export RPI_OS=raspbian
export RPI_NAME=stretch
export RPI_DIRECTORY=${RPI_OS}-2017-08-17

export RPI_KERNEL=kernel-qemu-4.4.34-jessie
export RPI_IMG=${RPI_VERSION}-${RPI_OS}-${RPI_NAME}.img
export RPI_FS=${RPI_OS}-${RPI_NAME}.qcow