# Share history between terminals
setopt inc_append_history
setopt share_history

# Show history when clicking up/down
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# ctrl + arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export PATH=/usr/local/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"Copy
export DISABLE_AUTO_TITLE="true"
export PS1="%d 🥑 "

DISABLE_AUTO_TITLE="true"

function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Local aliases
alias ll='ls -la'

# import local work aliases
. /Users/$USER/.work.zshrc

# zsh configuration:
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

. /usr/local/etc/profile.d/z.sh
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

echo Welcome back Ofer
