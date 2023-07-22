alias .n='dotnet'
alias .nb='dotnet build'
alias .nh='dotnet help'
alias .nr='dotnet run'
alias .nt='dotnet test'

_dotnet_bash_completion() {
	local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n'
	local candidates

	read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)
	read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}
complete -f -F _dotnet_bash_completion dotnet
