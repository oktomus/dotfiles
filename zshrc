
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Required for ruby gems to work
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Required for Rez to work
PATH="/home/oktomus/bin/rez:$PATH"

export EDITOR=vim
export BROWSER=firefox

# Aliases

if [ -f "$HOME/.dotfiles/alias" ]; then
   source "$HOME/.dotfiles/alias"
fi	

# Functions 

if [ -f "$HOME/.dotfiles/functions" ]; then
   source "$HOME/.dotfiles/functions"
fi	

