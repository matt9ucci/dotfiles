# https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#set
set -eux

DOTFILES_HOME="$(cd "$(dirname "$0")" && pwd)"
if [ "$DOTFILES_HOME" != "$HOME/dotfiles" ]
then
	echo "\$DOTFILES_HOME=$DOTFILES_HOME is wrong." "Install dotfiles into $HOME/dotfiles" >&2
	exit 1
fi

ln -fs "$DOTFILES_HOME/Shell/bash/.bashrc" "$HOME/.bashrc"
ln -fs "$DOTFILES_HOME/Shell/bash/.bash_aliases" "$HOME/.bash_aliases"
ln -fs "$DOTFILES_HOME/Shell/bash/.inputrc" "$HOME/.inputrc"

ln -fs "$DOTFILES_HOME/Shell/zsh/.zshrc" "$HOME/.zshrc"

if [ -x "$(command -v pwsh)" ]
then
	pwsh -c 'git clone https://github.com/matt9ucci/PSProfiles.git (Split-Path $PROFILE)'
fi
