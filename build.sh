#!/bin/sh
# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
if ! [[ $1 ]] then
    echo "Usage: sh ./build.sh [OUTPUT_DIR]"
    exit
fi

for pkg in ./*/
do
    echo "Building the package $pkg"
    cd $pkg
    yes | makepkg -s
    cp *.pkg.tar.zst ../../yavalinux-repo/x86_64/ $1
    cd ..
done
