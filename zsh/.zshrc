#
# zinit
#

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit snippet PZTM::completion/init.zsh
zinit snippet PZTM::history/init.zsh
zinit load zsh-users/zsh-autosuggestions
zinit load zdharma-continuum/fast-syntax-highlighting

#
# zsh
#

setopt HIST_NO_STORE
unsetopt HIST_FIND_NO_DUPS
unsetopt HIST_EXPIRE_DUPS_FIRST
unsetopt HIST_IGNORE_ALL_DUPS

export HISTSIZE=100000
export SAVEHIST=100000

#
# alias
#

alias l='ls -1A'
alias ll='ls -lh'
alias lr='ll -R'
alias la='ll -A'
alias lm='la | "$PAGER"'
alias lk='ll -Sr'
alias lt='ll -tr'
alias lc='lt -c'
alias lu='lt -u'
alias sl='ls'
alias relogin='exec $SHELL -l'
alias history='history -i'

#
# starship
#

eval "$(starship init zsh)"

#
# fzf
#

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#
# anyenv
#

eval "$(anyenv init -)"

