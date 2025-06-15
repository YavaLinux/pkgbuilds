#!/bin/sh
# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
for pkg in ./*-git/; do
  echo "Building the package $pkg"
  cd $pkg
  yes | makepkg -s
  cp *.pkg.tar.zst ../build
  cd ..
done
