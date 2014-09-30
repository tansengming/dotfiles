if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
alias mv='gmv -vi'
alias be='bundle exec'
alias grep='grep -i'
alias new='ls -lht | head'
alias heroku=’nocorrect heroku’
alias git='nocorrect /usr/local/bin/git'
alias ag="nocorrect noglob ag --smart-case --context"
alias ag0='ag -C0'
alias lg='ls | grep'
alias ze='zeus'
alias f='mdfind -onlyin . -name'
alias sp='spring'
alias ql='qlmanage -p'

export EDITOR=~/bin/subl
export VISUAL=~/bin/subl
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin::/opt/X11/bin:$HOME/bin:/usr/X11R6/bin
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive
export GOPATH=$HOME/Projects/go
# cos http://stackoverflow.com/q/9044551/
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Customize to your needs...
unsetopt correct_all
autoload -U select-word-style
select-word-style bash
[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh # autojump plugin wasn't working for me


function dev() { cd `ruby -e 'puts File.realpath File.expand_path %q{~/dev}'`}
function gitdel() { nocorrect git branch -d $1 && git push origin :$1 }

eval "$($HOME/Blake/bx/bin/bx init -)"

# chruby
source /usr/local/share/chruby/chruby.sh
RUBIES=(~/.rbenv/versions/*)
chruby 2.1.2