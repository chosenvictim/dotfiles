# Git commands completion.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Enable highlight colors
export CLICOLOR=1

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Alias
alias doorsb='cd ~/Documents/hashtaag/doors-backend';
alias doorsw='cd ~/Documents/hashtaag/doors-web';
alias ll="ls -GFlash";


export NVM_DIR="/Users/shekhar/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
