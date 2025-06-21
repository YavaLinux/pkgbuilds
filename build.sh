#!/bin/sh
# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
for pkg in ./*-git/; do
  cd /yavalinux
  echo "Building the package $pkg"
  cd $pkg
  makepkg --nodeps --force --noconfirm
  cp *.pkg.tar.zst /yavalinux/build
done
