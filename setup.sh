/bin/sh

echo "Cleaning Git deposit for my configuration and Gitting it."
rm -rf ~/MyLinuxConf
git clone https://github.com/DarkScytale/MyLinuxConf.git

echo "Working with Zsh (assuming it has been installed) ..."
mkdir ~/.zsh
