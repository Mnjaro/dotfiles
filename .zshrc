export ANDROID_HOME=/mnt/c/Users/ariag/AppData/Local/Android/Sdk
export ZSH="/home/jaro/.oh-my-zsh"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/home/jaro/win32yank.exe

plugins=(
  git
  sudo
  copybuffer
  copyfile
  docker-compose
  docker
  zsh-autosuggestions   
)



ZSH_THEME="af-magic"
# User configuration
alias win='cd /mnt/c/Users/ariag';
alias dev='cd ~/Dev';
alias v='nvim';

source $ZSH/oh-my-zsh.sh
