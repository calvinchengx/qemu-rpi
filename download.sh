#!/usr/bin/env bash

source ./var.sh

export ZIP=${RPI_VERSION}-${RPI_OS}-${RPI_NAME}.zip
export DOWNLOAD_URL=http://downloads.raspberrypi.org/raspbian/images/${RPI_DIRECTORY}/${ZIP}

echo "Downloading raspbian image"
curl -OL http://downloads.raspberrypi.org/raspbian/images/${RPI_DIRECTORY}/${ZIP}
unzip -o ${ZIP}

echo "Downloading qemu raspbian kernel"
curl -OL https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/${RPI_KERNEL}