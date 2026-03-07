typeset -U path PATH

path=(
  "$HOME/.local/bin"
  "$HOME/bin"
  $path
)

# Optional Linux custom Neovim path
[[ -d /opt/nvim-linux-arm64/bin ]] && path=(/opt/nvim-linux-arm64/bin $path)

export PATH