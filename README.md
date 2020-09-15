# GUI ArchISO (KDE plasma edition)

This repo contains the files to create an Arch Linux boot ISO that automatically loads the KDE plasma desktop environment. 

# How to build

1. Make shure you're using an Arch Linux based distro, as most tools needed for building are Arch-only.

2. ´archiso´ needs all files to be owned as root, so do NOT clone it as a normal users.
Login as root (via ´sudo -i´, ´doas -s´ or ´su´) and clone the files to it's home folder (`/root`) instead.

3. Install archiso --> `sudo pacman --needed -S archiso`

4. Cd into the directory, then type `mkarchiso -v -w /tmp/gui-archiso-kde-work -o ${PWD}/out ${PWD}`

To test the ISO imediatly, you can use `run_archiso`, which will run the ISO inside QEmu (which you need to have installed).
