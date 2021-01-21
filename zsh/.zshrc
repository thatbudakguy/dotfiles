# safety helpers
set -o ignoreeof         # Do not log out with <Ctrl-D>
set -o noclobber         # Do not overwrite files via '>'.
alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.

# replace ls with exa
alias ls='exa'
alias ll='exa --long --all'

# replace cat with bat
alias cat='bat'

# add color to 'grep' and friends
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# python virtualenv activation
alias ve='source venv/bin/activate'

# django runserver
alias rs='python manage.py runserver'

# kevin's github cli aliases
alias gil="gh issue list"
alias gic="gh issue create"
alias grv="gh repo view --web"
alias giv="gh issue view --web"
function grvc { eval "gh repo view --web princeton-cdh/$1" }
function grvp { eval "gh repo view --web pulibrary/$1" }

# use neovim as editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Make the command line history ignore duplicate command lines.
export HISTCONTROL=erasedups:ignoredups

# Make the command-line history show dates and times.
export HISTTIMEFORMAT="%F %T "

# Support non-ASCII characters in terminal.
# Note: use LC_ALL='C' if you want sort to behave in expected way.
export LC_ALL='en_US.UTF-8'

# volta configuration                                                                                                                           
export VOLTA_HOME="/Users/nbudak/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

# pyenv configuration                                                                                                                                        
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# allow multiprocessing in python
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# load secrets
source ~/.secrets

# starship prompt
eval "$(starship init zsh)"
