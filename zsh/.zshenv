# safety helpers
alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.

# replace ls with exa
alias ls='exa'
alias ll='exa --long --all'

# replace cat with bat
alias cat='bat'

# replace find with fd
alias find='fd'

# replace vi/vim with neovim
alias vi='nvim'
alias vim='nvim'

# add color to 'grep' and friends
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# python virtualenv activation
alias ve='source venv/bin/activate'

# django runserver
alias rs='python manage.py runserver'

# git aliases
alias gs="git status --short"
alias gd="git diff"
alias gl="git log --oneline --graph"

# kevin's github cli aliases
alias gil="gh issue list"
alias gic="gh issue create"
alias grv="gh repo view --web"
alias giv="gh issue view --web"
function grvc { eval "gh repo view --web princeton-cdh/$1" }

# aliases for apps
alias vpn='open -a "SonicWALL Mobile Connect.app"'
