. ~/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen use oh-my-zsh
antigen bundle history-substring-search
antigen bundle git
antigen theme fishy

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
alias mv='gmv -vi'
alias j='z'

# Customize to your needs...
setopt HIST_FIND_NO_DUPS
setopt histignorealldups
unsetopt correct_all
autoload -U select-word-style
select-word-style bash

export EDITOR=~/bin/subl
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/bin:/usr/X11R6/bin:/usr/local/share/npm/bin
export PATH=$HOME/.rbenv/shims:$PATH
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive

function dev() { cd `ruby -e 'puts File.realpath File.expand_path %q{~/dev}'`}