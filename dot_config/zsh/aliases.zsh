alias c='clear'

if command -v brew >/dev/null 2>&1; then
  alias buu='brew update && brew upgrade'
fi

if command -v mc >/dev/null 2>&1; then
  alias mc='mc --nosubshell'
fi

if command -v batcat >/dev/null 2>&1; then
  alias bat='batcat'
  alias b='batcat --paging=never'
elif command -v bat >/dev/null 2>&1; then
  alias b='bat --paging=never'
fi

if command -v eza >/dev/null 2>&1; then
  alias l='eza --icons'
  alias ls='eza --icons'
  alias ll='eza -lagh --icons'
  alias la='eza -lag --icons'
  alias lt='eza -lTg --icons'
  alias lt1='eza -lTg --level=1 --icons'
  alias lt2='eza -lTg --level=2 --icons'
  alias lt3='eza -lTg --level=3 --icons'
  alias lta='eza -lTag --icons'
  alias lta1='eza -lTag --level=1 --icons'
  alias lta2='eza -lTag --level=2 --icons'
  alias lta3='eza -lTag --level=3 --icons'
fi

if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
  alias vi='nvim'
  alias n='nvim'
fi

if command -v fzf >/dev/null 2>&1; then
  alias f='fzf'
  alias fh='fc -rl 1 | fzf'
fi

if command -v docker >/dev/null 2>&1; then
  alias d='docker'
  alias dc='docker compose'
  alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
  alias dtop='docker stats'
  alias dlog='docker logs -f --tail=200'
fi

if command -v systemctl >/dev/null 2>&1; then
  alias s='systemctl'
  alias ss='systemctl status'
  alias sr='systemctl restart'
fi

if command -v journalctl >/dev/null 2>&1; then
  alias j='journalctl -xe'
  alias jb='journalctl -b -xe'
  alias jerr='journalctl -b -p err..alert'
fi