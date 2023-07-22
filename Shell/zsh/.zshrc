DOTFILES_HOME="$HOME/dotfiles"

if [ -d "$HOME/.oh-my-zsh" ]
then
	ZSH="$HOME/.oh-my-zsh"
	ZSH_THEME="robbyrussell"
	. $ZSH/oh-my-zsh.sh
fi

plugins=(
	git
)

# Reuse bash aliases
if [ -f "$HOME/.bash_aliases" ]
then
	. "$HOME/.bash_aliases"
fi
