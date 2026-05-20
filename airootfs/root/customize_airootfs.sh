#!/bin/bash
set -e

systemctl enable NetworkManager
systemctl enable sddm

useradd -m -G wheel,video,audio,input -s /bin/bash live
echo "live:live" | chpasswd
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
