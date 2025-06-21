FROM archlinux

COPY mirrorlist /etc/pacman.d/mirrorlist
RUN echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN pacman -Sy sudo base-devel git --noconfirm

RUN useradd -ms /bin/bash ainyava
RUN usermod -aG wheel ainyava
USER ainyava
