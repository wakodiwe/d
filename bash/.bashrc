# ~/.bashrc

# TODO Add colors and LC_COLORS

[[ $- != *i* ]] && return

#. ~/.env
# . ~/.alias

[ -f ~/.alias ] && . ~/.alias

# Load ~/.inputrc if exists
# else activate vi-mode in ~/bashrc
if [ -f ~/.inputrc ]; then
	bind -f ~/.inputrc
else
	set -o vi
fi

# Helper function for vifm
# TODO Put in plugin dir/function
d() {
  local dst="$(command vifm --choose-dir - "$@")"
  if [ -z "$dst" ]; then
    echo 'Directory picking cancelled/failed'
    return 1
  fi
  cd "$dst"
}

# Count background jobs
# and display them in prompt [17] YOUR_PS1
count_jobs() {
	unset JOBS
	running_jobs="$(jobs -p | wc -l | xargs)"
	[ "${running_jobs}" -gt 0 ] && JOBS="[${running_jobs}] "
}
export PROMPT_COMMAND='history -a; history -r; count_jobs'
PS1="\${JOBS}\w > "

alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths

# bash_d="${XDG_CONFIG_HOME}"/bash.d
#if [ -d "${bash_d}" ]; then
#  for bashd in "${bash_d}"; do
#    [ -f "${bashd}" ] && . "${bashd}"
#  done
#fi
#
#

bind -m vi-command -x '"\C-p": __fzf_history__'
bind -m vi-insert -x '"\C-p": __fzf_history__'
