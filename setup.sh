/bin/sh

echo "STEP 1: GETTING GIT FILES ..."
echo "Cleaning Git deposit for my configuration and Gitting it."
# git clone https://github.com/DarkScytale/MyLinuxConf.git
rm -rf ~/MyLinuxConf
cd ~

echo "STEP 2: BACKING UP CURRENT CONFIGURATION ..."
rm -rf ~/MyLinuxConf.backup
mkdir ~/MyLinuxConf.backup
mv ~/.zsh ~/MyLinuxConf.backup
mv ~/.zshrc ~/MyLinuxConf.backup
mv ~/.zsh_history ~/MyLinuxConf.backup
mv ~/.tmux ~/MyLinuxConf.backup
mv ~/.tmux.conf ~/MyLinuxConf.backup
mv ~/.vim ~/MyLinuxConf.backup
mv ~/.vimrc ~/MyLinuxConf.backup

echo "STEP 3: CONFIGURING ZSH ..."
echo "Working with Zsh (assuming it has been installed) ..."
mv ~/MyLinuxConf/zsh ~/.zsh
ln -s ~/.zshrc ~/.zsh/.zshrc

echo "STEP 4: CONFIGURING TMUX ..."
mv ~/MyLinuxConf/tmux ~/.tmux
ln -s ~/.tmux/.tmux.conf .

echo "STEP 5: CONFIGURING VIM ..."
echo "Not done"
mv ~/MyLinuxConf/vim ~/.vim
ln -s ~/.vim/.vimrc .