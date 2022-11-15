# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# nvim
alias vi="nvim.appimage"
alias vim="nvim.appimage"
alias nvim="nvim.appimage"

# aliases for peach application
alias cdpa="cd ~/code/peach-application"
alias vipa="cd ~/code/peach-application && vi"
alias nnnpa="cd ~/code/peach-application && nnn"
alias devpa="cd ~/code/peach-application && pnpm dev"
alias lazypa="cd ~/code/peach-application && lazygit"
alias testpa="cd ~/code/peach-application && pnpm test"

# aliases for peach quote 
alias cdpq="cd ~/code/peach-quote"
alias vipq="cd ~/code/peach-quote && vi"
alias nnnpq="cd ~/code/peach-quote && nnn"
alias devpq="cd ~/code/peach-quote && pnpm dev"
alias lazypq="cd ~/code/peach-quote && lazygit"
alias testpq="cd ~/code/peach-quote && pnpm test"

# aliases for peachinsurance.net
alias cdpi="cd ~/code/peachinsurance.net-svelte"
alias vipi="cd ~/code/peachinsurance.net-svelte && vi"
alias nnnpi="cd ~/code/peachinsurance.net-svelte && nnn"
alias devpi="cd ~/code/peachinsurance.net-svelte && pnpm dev"
alias lazypi="cd ~/code/peachinsurance.net-svelte && lazygit"
alias testpi="cd ~/code/peachinsurance.net-svelte && pnpm test"

alias nvimedit="cd ~/.config/nvim && vi"
alias mine="cd ~/Applications/t-rex-0.24.8-linux && ./eth-hiveon-trex.sh"

# misc aliases
alias cdc="cd ~/code && ls"
alias reboot-windows="systemctl reboot --boot-loader-entry=auto-windows"

# fnm
export PATH=/home/jack/.fnm:$PATH
eval "`fnm env`"

source ~/.powerlevel10k/powerlevel10k.zsh-theme

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
