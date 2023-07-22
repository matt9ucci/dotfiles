DOTFILES_HOME="$HOME/dotfiles"

#
# Bash Variables https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html
#
# ignorespace and ignoredups
HISTCONTROL=ignoreboth

if [ -f "$HOME/.bash_aliases" ]
then
	. "$HOME/.bash_aliases"
fi

if [ -f /etc/profile.d/bash_completion.sh ]
then
	. /etc/profile.d/bash_completion.sh
fi

if [ -x "$(command -v aws)" ]
then
	. "$DOTFILES_HOME/Tool/aws/.bash"
fi

if [ -x "$(command -v cargo)" ]
then
	. "$DOTFILES_HOME/Tool/cargo/.bash"
fi

if [ -x "$(command -v dotnet)" ]
then
	. "$DOTFILES_HOME/Tool/dotnet/.bash"
fi

if [ -x "$(command -v npm)" ]
then
	. "$DOTFILES_HOME/Tool/npm/.bash"
fi
