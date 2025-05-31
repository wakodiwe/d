# ~/.bashrc

# TODO Add colors and LC_COLORS

[[ $- != *i* ]] && return

[ -f ~/.alias ] && . ~/.alias

if [ -f ~/.inputrc ]; then
	bind -f ~/.inputrc
else
# TODO Add vi-bindings for bash
	set -o vi
fi


ent() {
  find $1 | entr $1
}

d() {
  local dst="$(command vifm --choose-dir - "$@")"
  if [ -z "$dst" ]; then
    echo 'Directory picking cancelled/failed'
    return 1
  fi
  cd "$dst"
}

PS1="\w > "



# alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
# alias show_options='shopt'                  # Show_options: display bash options settings
# alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
# alias fix_term='echo -e "\033c"'            # fix_term:     Reset the conosle.  Similar to the reset command
# alias cic='bind "set completion-ignore-case on"' # cic:          Make tab-completion case-insensitive
# alias src='source ~/.bashrc'                # src:          Reload .bashrc file

# bash_d="${XDG_CONFIG_HOME}"/bash.d
#if [ -d "${bash_d}" ]; then
#  for bashd in "${bash_d}"; do
#    [ -f "${bashd}" ] && . "${bashd}"
#  done
#fi
#
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
