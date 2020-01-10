# Load version control information
autoload -U promptinit; promptinit
prompt pure

# Add Visual Studio Code (code)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias ls='ls -G'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/Users/igor/bin/Sencha/Cmd:$PATH"
export TERM="screen-256color"

eval $(ssh-agent)

if [ -f /usr/local/bin/gls ]; then
	alias ls="gls --color"
fi

alias ll="ls -la"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ssh="TERM=vt100 ssh"

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
