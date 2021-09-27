# - environment variables -

export EDITOR=vi
export VISUAL=vi
export EDITOR_PREFIX=vi
b=$(git branch --show-current 2>/dev/null)
PS1="\[\e[32m\]\w\[\e[0m\] \[\e[34m\][$b]\[\e[0m\] \$ "
