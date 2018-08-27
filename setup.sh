/bin/sh

echo "STEP 1: GETTING GIT FILES ..."
echo "Cleaning Git deposit for my configuration and Gitting it."
rm -rf ~/MyLinuxConf
cd ~
git clone https://github.com/DarkScytale/MyLinuxConf.git

echo "STEP 2: BACKING UP CURRENT CONFIGURATION ..."
rm -rf ~/MyLinuxConf.backup
mkdir ~/MyLinuxConf.backup
mv ~/.zsh ~/MyLinuxConf.backup
mv ~/.zshrc ~/MyLinuxConf.backup

echo "STEP 3: CONFIGURING ZSH ..."
echo "Working with Zsh (assuming it has been installed) ..."
mv ~/MyLinuxConf/zsh ~/.zsh
ln -s ~/.zshrc ~/.zsh/.zshrc


echo "STEP 3: CONFIGURING VIM ..."
echo "Not done"

echo "STEP 4: CONFIGURING TMUX ..."
echo "Not done"