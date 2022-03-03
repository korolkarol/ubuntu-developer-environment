#!bin/bash

# VS Code
TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" 'https://go.microsoft.com/fwlink/?LinkID=760868' &&
sudo dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"

#teams
TEMP_DEB_2="$(mktemp)" && wget -O "$TEMP_DEB_2" 'https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x415&culture=pl-pl&country=PL' &&
sudo dpkg -i "$TEMP_DEB_2"
rm -f "$TEMP_DEB_2"

#docker
sudo apt install -y ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y adb apt-transport-https calibre chromium-browser code docker-ce docker-ce-cli \
containerd.io gcc git gnome-shell-extensions gnome-tweaks htop make musescore3 neofetch openjdk-17-jdk \
tabby-terminal teams tmux virtualbox zsh
