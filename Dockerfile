FROM archlinux

COPY mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Sy sudo base-devel --noconfirm
RUN pacman -S git --noconfirm


RUN useradd -ms /bin/bash ainyava
RUN usermod -aG wheel ainyava
USER ainyava
