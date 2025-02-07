#!/bin/sh
# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
for pkg in ./*/; do
  echo "Building the package $pkg"
  cd $pkg
  yes | makepkg -s
  cp *.pkg.tar.zst ../../repo/x86_64/
  cd ..
done
