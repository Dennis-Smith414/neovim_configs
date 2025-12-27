#!/bin/bash

echo "installing Dependancies"
sudo pacman -S tmux
sudo pacman -S clang                    
sudo pacman -S lua-language-server      
sudo pacman -S python-lsp-server        
sudo pacman -S xclip
npm install -g pyright                    
npm install -g bash-language-server         
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted # HTML/CSS/JSON
