#— .bashrc

[[ $- != *i* ]] && return

rmmod pcspkr 2>/dev/null # nix beep

PS1="\w > # "

alias gs="git status"

# bash_d="${XDG_CONFIG_HOME}"/bash.d
#if [ -d "${bash_d}" ]; then
#  for bashd in "${bash_d}"; do
#    [ -f "${bashd}" ] && . "${bashd}"
#  done
#fi
#
#alias ll="ls -la"
#
#. ~/.env
# . ~/.alias


# . ~/.alias
# 
# 
# # bind Tab:menu-complete
# 
# stty -echoctl
# 
# shopt -s autocd
# shopt -s cdable_vars
# shopt -s histappend
# export HISTFILE=${XDG_DATA_HOME}/history/.bashhst
# export HISTCONTROL="ignoredups:ignorespace:erasedups"
# 
# count_jobs() {
# 	unset JOBS
# 	running_jobs="$(jobs -p | wc -l | xargs)"
# 	[ "${running_jobs}" -gt 0 ] && JOBS="[${running_jobs}] "
# }
# export PROMPT_COMMAND='history -a; history -r; count_jobs'
# PS1="\${JOBS}\w > "
# 
# if [ -d ~/.bash.d ]; then
# 	for bashd in ~/.bash.d/*; do
# 		[ -f "${bashd}" ] && . "${bashd}"
# 	done
# fi
# 
# bind -m vi-command -x '"\C-p": __fzf_history__'
# bind -m vi-insert -x '"\C-p": __fzf_history__'
# 
# d() {
# 	local dst="$(command vifm --choose-dir - "$@")"
# 	if [ -z "$dst" ]; then
# 		echo 'Directory picking cancelled/failed'
# 		return 1
# 	fi
# 	cd "$dst"
# }
