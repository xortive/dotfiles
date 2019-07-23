git init --bare $HOME/.cfg
echo "created git repo"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc

source $HOME/.zshrc
config remote add origin git@github.com:granjef3/dotfiles.git
echo "added remote. Done!"
