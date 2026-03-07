typeset -r jetbrains_vmoptions_shell_file="$HOME/.jetbrains.vmoptions.sh"
[[ -r "$jetbrains_vmoptions_shell_file" ]] && source "$jetbrains_vmoptions_shell_file"

ulimit -n 524288 2>/dev/null
ulimit -u 2048 2>/dev/null

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"