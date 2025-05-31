#- ~/.profile

# . ~/.environment

export PATH="$PATH:~/bin:~/.local/bin"

export HISTFILE=~/.local/share/history/bash.hst

export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share

export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

[ -f ~/.bashrc ] && . ~/.bashrc

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_github
