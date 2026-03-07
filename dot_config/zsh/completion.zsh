autoload -Uz compinit
zmodload zsh/complist

[[ -d "$ZDOTDIR/.cache" ]] || mkdir -p "$ZDOTDIR/.cache"

compinit -d "$ZDOTDIR/.cache/zcompdump"

zstyle ':completion:*' menu select
[[ -n "$LS_COLORS" ]] && zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

_comp_options+=(globdots)

if [[ -r /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

if [[ -r /usr/share/doc/fzf/examples/completion.zsh ]]; then
  source /usr/share/doc/fzf/examples/completion.zsh
fi