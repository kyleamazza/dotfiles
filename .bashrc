export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ls='ls --color -A'

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="$HOME/.rbenv/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Change PS1 by function, in order to change properly when a bad command is
PROMPT_COMMAND=ps

GREEN='\[\e[0;32m\]'
RED='\[\e[0;31m\]'
function ps
{
### PS1
if [ $? -eq "0" ]
then 
  SC="${GREEN}+"
else
  SC="${RED}-"
fi

PS1="{\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;226m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]}:\w [${SC}\[\e[0m\]]\n >>> \[$(tput sgr0)\]"
}
### END PS1 stuff

