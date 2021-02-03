# safety helpers
set -o ignoreeof         # Do not log out with <Ctrl-D>
set -o noclobber         # Do not overwrite files via '>'.

# use neovim as editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# add colors to less
export LESS=R

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
