if [ "$color_prompt" = yes ]
then
    PS1='$(date +"%d.%m.%Y %H:%M:%S") ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi


alias cdprojetos="cd /home/thor27/projetos/"
alias vpython2='[ -d "../vpython-$(basename $(pwd))" ] || $HOME/scripts/create_env 2; source ../vpython-$(basename $(pwd))/bin/activate'
alias vpython='[ -d "../vpython-$(basename $(pwd))" ] || $HOME/scripts/create_env 3; source ../vpython-$(basename $(pwd))/bin/activate'


load_nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm use 8.9
}

