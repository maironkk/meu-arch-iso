#!/bin/bash
if [ ! -f ~/.setup_done ]; then
    echo "Instalando dotfiles illogical-impulse..."
    bash <(curl -s https://ii.clsty.link/get)
    touch ~/.setup_done
fi
