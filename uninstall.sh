#!/bin/bash

echo "Removing Frijolito OS Plymouth Theme..."

sudo rm -rf /usr/share/plymouth/themes/frijolito

sudo update-alternatives --set default.plymouth \
/usr/share/plymouth/themes/mint-logo/mint-logo.plymouth

sudo update-initramfs -u

echo "Frijolito OS removed."
