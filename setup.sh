/bin/sh

echo "STEP 0: Preparing variables"
root_folder="~/MyLinuxConf"
root_folder_backup="~/MyLinuxConf.backup"

echo "STEP 1: Preparing the environment"
if [ -d ${root_folder} ]; then
	rm -rf ${root_folder_backup}
	mv ${root_folder} ${root_folder_backup}
fi

echo "STEP 1: Getting clean new files ..."
echo "Cleaning Git deposit for my configuration and Gitting it."
cd ~
git clone https://github.com/DarkScytale/MyLinuxConf.git

echo "STEP 2: Configuring ZSH ..."
rm -f ~/.zshrc
ln -s ${root_folder}/zsh/.zshrc ~/.zshrc

echo "STEP 3: Configuring tmux ..."
rm -f ~/.tmux.conf
ln -s ${root_folder}/tmux/.tmux.conf ~/.tmux.conf

echo "STEP 4: Configuring vim ..."
rm -f ~/.vimrc
ln -s ${root_folder}/vim/.vimrc ~/.vimrc
