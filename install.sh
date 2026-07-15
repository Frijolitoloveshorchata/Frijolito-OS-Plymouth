#!/bin/bash

echo "Installing Frijolito OS Plymouth Theme..."

sudo cp -r plymouth-theme/frijolito /usr/share/plymouth/themes/

sudo update-alternatives --install \
/usr/share/plymouth/themes/default.plymouth \
default.plymouth \
/usr/share/plymouth/themes/frijolito/frijolito.plymouth 100

sudo update-alternatives --set default.plymouth \
/usr/share/plymouth/themes/frijolito/frijolito.plymouth

sudo update-initramfs -u

echo "Frijolito OS installed successfully!"
