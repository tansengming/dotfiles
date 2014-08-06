ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois-tsm"

setopt HIST_FIND_NO_DUPS
setopt histignorealldups

alias x='exit'
alias desk='cd ~/Desktop'
alias rm='grm -v'
alias rmdir='grmdir -v'
alias cp='cp -vi'
alias ln='gln -v'
alias mkdir='gmkdir -v'
alias mkdev='rm -f ~/dev && ln -vs $PWD ~/dev'
alias be='bundle exec'
alias grep='grep -i'
alias new='ls -lht | head'
alias ag="noglob ag --smart-case --context"
alias lg='ls | grep'
alias ze='zeus'
alias f='mdfind -onlyin . -name'
alias sp='spring'

# because http://stackoverflow.com/q/9044551/
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

plugins=(git zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt correct_all
autoload -U select-word-style
select-word-style bash
alias mv='gmv -vi' # must be after plugins
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export EDITOR=~/bin/subl
export GOPATH=$HOME/Projects/go
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/bin:/usr/X11R6/bin:/usr/local/share/npm/bin
export PATH=$HOME/.rbenv/shims:$GOPATH/bin:$PATH
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive

function dev() { cd `ruby -e 'puts File.realpath File.expand_path %q{~/dev}'`}