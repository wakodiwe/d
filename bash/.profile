#- ~/.profile

# . ~/.environment
export XDG_CONFIG_HOME=~/.config

export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

[ -f ~/.bashrc ] && . ~/.bashrc

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_github
