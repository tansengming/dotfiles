# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# zsh-es
setopt HIST_FIND_NO_DUPS
setopt histignorealldups
unsetopt CORRECT # Disable autocorrect guesses.
unsetopt correct_all
autoload -U select-word-style
select-word-style bash

# GNUs
alias mv='gmv -vi' # must be after plugins
alias rm='grm -v'
alias rmdir='grmdir -v'
alias cp='gcp -vi'
alias ln='gln -v'
alias mkdir='gmkdir -v'
alias grep='grep -i'
# Rails
alias be='bundle exec'
alias sp='spring'
alias ze='zeus'
# Dev
alias mkdev='grm -f ~/dev && ln -vs $PWD ~/dev'
alias dev='cd `realpath ~/dev`'
# etc
alias x='exit'
alias desk='cd ~/Desktop'
alias new='gls -lht | head'
alias ag="noglob ag --smart-case --context"
alias ag0="noglob ag -C0 --smart-case"
alias lg='ls | grep'
alias f='mdfind -onlyin . -name'
alias ql='qlmanage -p'
# Suffixes
alias -s log='most'
alias -s png='qlmanage -p'

# because http://stackoverflow.com/q/9044551/
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# PATH
export PATH=$HOME/.rbenv/shims                                          # rbenv on top
export PATH=$PATH:$HOME/.nodebrew/current/bin                           # nodebrew
export PATH=$PATH:/usr/local/bin:/usr/local/sbin                        # homebrew
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/bin  # system
export PATH=$PATH:/usr/X11R6/bin:/usr/local/share/npm/bin:$GOPATH/bin   # apps

export EDITOR='~/bin/subl -w'
export GOPATH=$HOME/Projects/go
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive