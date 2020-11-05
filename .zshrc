export ZSH="/home/jaro/.oh-my-zsh"

plugins=(
  git
  npm
  sudo
  copybuffer
  copyfile
  docker-compose
  docker
  zsh-autosuggestions   
  gitignore
)



ZSH_THEME="af-magic"
# User configuration
alias win='cd /mnt/c/Users/ariag';
alias dev='cd ~/Dev';
alias v='nvim';

source $ZSH/oh-my-zsh.sh
