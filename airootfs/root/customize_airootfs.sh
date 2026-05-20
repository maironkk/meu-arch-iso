#!/bin/bash
set -e

# Habilitar serviços
systemctl enable NetworkManager
systemctl enable sddm

# Criar usuário
useradd -m -G wheel,video,audio,input -s /bin/bash live
echo "live:live" | chpasswd
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Instalar yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
sudo -u live makepkg -si --noconfirm
