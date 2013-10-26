ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois"

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
alias heroku=’nocorrect heroku’
alias git='nocorrect /usr/local/bin/git'
alias ag="nocorrect noglob ag --smart-case --context"
alias lg='ls | grep'
alias ze='zeus'
alias f='mdfind -onlyin . -name'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

plugins=(git ruby rails osx history-substring-search zsh-syntax-highlighting gnu-utils autojump git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt correct_all
autoload -U select-word-style
select-word-style bash
alias mv='gmv -vi' # must be after plugins

export EDITOR=~/bin/subl
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/bin:/usr/X11R6/bin:/usr/local/share/npm/bin
export PATH=$HOME/.rbenv/shims:$PATH
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive

function dev() { cd `ruby -e 'puts File.realpath File.expand_path %q{~/dev}'`}
