# Load version control information
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Add Visual Studio Code (code)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias ls='ls -G'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/Users/igotim/bin/Sencha/Cmd:$PATH"
export TERM="screen-256color"

/opt/homebrew/bin/fortune
echo

eval $(ssh-agent) > /dev/null 2>&1

if [ -f /usr/local/bin/gls ]; then
	alias ls="gls --color"
fi

alias ll="ls -la"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ssh="TERM=vt100 ssh"

source /Users/igotim/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias l='ls'

eval export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export LSCOLORS=exfxbxdxcxegedabagacad;


#[ -f "/Users/igotim/.ghcup/env" ] && source "/Users/igotim/.ghcup/env" # ghcup-env
export LDFLAGS=-L/opt/homebrew/opt/llvm/lib
export CPPFLAGS=-I/opt/homebrew/opt/llvm/include
export PATH="/opt/homebrew/Cellar/llvm/12.0.1/bin:/Users/igotim/.local/bin:{PATH+:$PATH}";

export PATH="/opt/homebrew/opt/openjdk@11/bin:{$PATH}";

[ -f "/Users/igotim/.ghcup/env" ] && source "/Users/igotim/.ghcup/env" # ghcup-env

listening() {
	if [ $# -eq 0 ]; then
		sudo lsof -iTCP -sTCP:LISTEN -n -P
	elif [ $# -eq 1 ]; then
		sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
	else
		echo "Usage: listening [pattern]"
	fi
}

export VODAHOME_MQTT_SERVER=192.168.0.12

export PATH=$PATH:/usr/local/share/dotnet
alias cxo-update='for i in cxo-* ; do pushd $i ; git pull ; popd ; done'
alias cxo-upgrade="docker images --format '{{.Repository}}:{{.Tag}}' | grep 'ghcr.io.*cxo.*latest'| xargs -n 1 docker pull"
alias yt-dl='docker run \
	--rm -i \
	-e PGID=$(id -g) \
	-e PUID=$(id -u) \
	-v "$(pwd)":/workdir:rw \

	mikenye/youtube-dl'


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion



# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/igotim/.lmstudio/bin"
# End of LM Studio CLI section

