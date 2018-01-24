export PS1="\u@\h:\[\033[32m\]\W \[\033[33m\]\$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/\* \(.*\)/(\1)/')\[\033[00m\] $ "

# Add Visual Studio Code (code)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias ls='ls -G'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/Users/igor/bin/Sencha/Cmd:$PATH"
export TERM="screen-256color"

eval $(gdircolors ~/.dircolors/dircolors.256dark)
eval $(ssh-agent)

if [ -f /usr/local/bin/gls ]; then
	alias ls="gls --color"
fi

alias ll="ls -la"

