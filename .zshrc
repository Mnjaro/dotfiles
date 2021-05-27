# EXPORTS
export ZSH="/home/ariagroult/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# CONFIGURATIONS
# ZSH
ZSH_THEME="robbyrussell"

plugins=(git)

# FUNCTIONS
#		- start xclip with arguments
				xc(){
				  cat "$1" | xclip -selection clipboard
				}					
#		- end xclip with arguments
				
# ALIASES
# nvim
alias v="nvim"

# SOURCING
source $ZSH/oh-my-zsh.sh

# LOADING SCRIPTS
if [ "$TMUX" = "" ]; then tmux; fi
