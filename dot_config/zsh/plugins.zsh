source_first_found() {
  local file
  for file in "$@"; do
    if [[ -n "$file" && -r "$file" ]]; then
      source "$file"
      return 0
    fi
  done
  return 1
}

typeset -r zsh_plugin_base_local="$HOME/.local/share/zsh/plugins"
typeset -r zsh_plugin_base_legacy="$HOME/.config/zsh/plugins"

typeset brew_prefix=""
if command -v brew >/dev/null 2>&1; then
  brew_prefix="$(brew --prefix 2>/dev/null)"
fi

if source_first_found \
  "${brew_prefix:+$brew_prefix/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh}" \
  "$zsh_plugin_base_local/zsh-autocomplete/zsh-autocomplete.plugin.zsh" \
  "$zsh_plugin_base_legacy/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
then
  zstyle ':autocomplete:*' min-delay 0.05
  zstyle ':autocomplete:*' recent-dirs true
  zstyle ':autocomplete:*' list-lines 12
  zstyle ':autocomplete:*' insert-unambiguous yes
fi

if source_first_found \
  "${brew_prefix:+$brew_prefix/share/zsh-autosuggestions/zsh-autosuggestions.zsh}" \
  "$zsh_plugin_base_local/zsh-autosuggestions/zsh-autosuggestions.zsh" \
  "$zsh_plugin_base_legacy/zsh-autosuggestions/zsh-autosuggestions.zsh"
then
  typeset -ga ZSH_AUTOSUGGEST_STRATEGY
  ZSH_AUTOSUGGEST_STRATEGY=(history completion)
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
fi

if source_first_found \
  "${brew_prefix:+$brew_prefix/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh}" \
  "$zsh_plugin_base_local/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" \
  "$zsh_plugin_base_legacy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
then
  typeset -ga ZSH_HIGHLIGHT_HIGHLIGHTERS
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
fi