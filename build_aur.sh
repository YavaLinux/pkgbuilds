#!/bin/sh
# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
export HTTPS_PROXY=http://172.16.56.101:1100
for pkg in google-chrome nvm sublime-text-4 visual-studio-code-bin calamares-git; do
    echo "Building the package $pkg"
    cd "/yavalinux/AUR/$pkg" && \
    makepkg --nodeps --force --noconfirm && \
    cp ./*.pkg.tar.zst /yavalinux/build
done
