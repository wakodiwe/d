#— ~/.profile

# . ~/.environment

[ -f ~/.bashrc ] && . ~/.bashrc

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_github
