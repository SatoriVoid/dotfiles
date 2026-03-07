y() {
  command -v yazi >/dev/null 2>&1 || return 1

  local tmp cwd
  tmp="$(mktemp -t yazi-cwd.XXXXXX 2>/dev/null || mktemp)" || return 1

  yazi "$@" --cwd-file="$tmp"

  if cwd="$(command cat -- "$tmp" 2>/dev/null)" && [[ -n "$cwd" && "$cwd" != "$PWD" ]]; then
    builtin cd -- "$cwd"
  fi

  rm -f -- "$tmp"
}

mkcd() {
  [[ -n "$1" ]] || { echo "mkcd: missing directory name" >&2; return 1; }
  mkdir -p -- "$1" && cd -- "$1"
}