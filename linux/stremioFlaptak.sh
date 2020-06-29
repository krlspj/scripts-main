#!/bin/bash
printf "============================\n"
printf "= Starting Stremio Install =\n"
printf "= By krls                  =\n"
printf "============================\n\n"

cd ~/Downloads
printf "Downloading Stremio --> Flatpak\n\n"
wget https://dl.strem.io/shell-linux/v4.4.116/Stremio+4.4.116.flatpak

printf "installing flatpak \n"
sudo apt update
sudo apt -y install flatpak

printf "Add flathub repository if not exists\n\n"

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

printf "Installing org.kde.Plataform/x86_64/5.12\n\n"
flatpak install -y flathub org.kde.Platform/x86_64/5.12
printf "Installing stremio...\n\n"
flatpak install -y Stremio+4.4.116.flatpak
printf "==>Launch stremio from flatpak\n\n"
sleep 1
flatpak run com.stremio.Stremio
