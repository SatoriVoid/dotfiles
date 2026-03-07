export CLICOLOR=1

export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=50000

if command -v nvim >/dev/null 2>&1; then
  export EDITOR="nvim"
  export VISUAL="$EDITOR"
elif command -v vim >/dev/null 2>&1; then
  export EDITOR="vim"
  export VISUAL="$EDITOR"
fi

export BAT_THEME="Monokai Extended"