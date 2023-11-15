#Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Store alsamixer settings
# if (( $+commands[alsactl] )); then
#  alsactl -f ~/.config/asound.state restore
#fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2 numeric
zstyle :compinstall filename '/home/jack/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=~/.npm-global/bin:$PATH
export PATH=/opt/firefox-developer:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/Applications:$PATH

alias nv='nvim'

# aliases for peach application
alias cdpa="cd ~/code/peach-application"
alias vipa="cd ~/code/peach-application && nvim"
alias nnnpa="cd ~/code/peach-application && nnn"
alias devpa="cd ~/code/peach-application && pnpm dev"
alias lazypa="cd ~/code/peach-application && lazygit"
alias testpa="cd ~/code/peach-application && pnpm test"

# aliases for peach quote 
alias cdpq="cd ~/code/peach-quote"
alias vipq="cd ~/code/peach-quote && nvim"
alias nnnpq="cd ~/code/peach-quote && nnn"
alias devpq="cd ~/code/peach-quote && pnpm dev"
alias lazypq="cd ~/code/peach-quote && lazygit"
alias testpq="cd ~/code/peach-quote && pnpm test"

# aliases for peachinsurance.net
alias cdpi="cd ~/code/peachinsurance.net-svelte"
alias vipi="cd ~/code/peachinsurance.net-svelte && nvim"
alias nnnpi="cd ~/code/peachinsurance.net-svelte && nnn"
alias devpi="cd ~/code/peachinsurance.net-svelte && pnpm dev"
alias lazypi="cd ~/code/peachinsurance.net-svelte && lazygit"
alias testpi="cd ~/code/peachinsurance.net-svelte && pnpm test"

# aliases for jackthompson.dev
alias cdjt="cd ~/code/jackthompson.dev"
alias vijt="cd ~/code/jackthompson.dev && nvim"
alias nnnjt="cd ~/code/jackthompson.dev && nnn"
alias devjt="cd ~/code/jackthompson.dev && pnpm dev"
alias lazyjt="cd ~/code/jackthompson.dev && lazygit"
alias testjt="cd ~/code/jackthompson.dev && pnpm test"

# aliases for peach-manage
alias cdpm="cd ~/code/peach-manage"
alias vipm="cd ~/code/peach-manage && nvim"
alias nnnpm="cd ~/code/peach-manage && nnn"
alias devpm="cd ~/code/peach-manage && pnpm dev"
alias lazypm="cd ~/code/peach-manage && lazygit"
alias testpm="cd ~/code/peach-manage && pnpm test"

alias nvimedit="cd ~/.dotfiles/nvim/.config/nvim && nvim"
alias mine="cd ~/Applications/t-rex-0.24.8-linux && ./eth-hiveon-trex.sh"

# aliases for peach-supabase
alias cdsb="cd ~/code/peach-supabase"
alias visb="cd ~/code/peach-supabase && nvim"
alias nnnsb="cd ~/code/peach-supabase && nnn"
alias lazysb="cd ~/code/peach-supabase && lazygit"
alias devdumpsb="cd ~/code/peach-supabase && supabase db dump -f supabase/seed.sql --data-only --db-url postgresql://postgres:postgres@localhost:54322/postgres"

# misc aliases
alias cdc="cd ~/code && ls"
alias reboot-windows="systemctl reboot --boot-loader-entry=auto-windows"

# fnm
export PATH=/home/jack/.fnm:$PATH
eval "`fnm env`"


# Lazygit
lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# pnpm
export PNPM_HOME="/home/jack/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jack/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jack/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jack/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jack/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Auto activate h2ogpt
conda activate h2ogpt

if [ -z "$LD_LIBRARY_PATH" ]; then
    export LD_LIBRARY_PATH=/usr/local/cuda/lib64/
else
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/
fi
export BNB_CUDA_VERSION=122
export CUDA_HOME=/usr/local/cuda
export PATH=$PATH:/usr/local/cuda/bin/

source ~/.powerlevel10k/powerlevel10k.zsh-theme
