typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.pnpm/global" "$path[@]")
export PATH
export EDITOR=nvim
. "$HOME/.cargo/env"
