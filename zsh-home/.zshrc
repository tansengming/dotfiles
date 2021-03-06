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
alias cp='/usr/local/bin/gcp -vi'
alias ln='gln -v'
alias mkdir='gmkdir -v'
alias grep='grep -i'
# Dev
alias mkdev='grm -f ~/dev && ln -vs $PWD ~/dev'
alias dev='cd ~/dev(:A)'
# etc
alias desk='cd ~/Desktop'
alias ag0="noglob ag -C0 --smart-case"
# Suffixes
alias -s log='most'
alias -s png='qlmanage -p'

# because http://stackoverflow.com/q/9044551/
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

function locate() { mdfind "kMDItemDisplayName == '$@'wc"; }
function f()      { mdfind -onlyin . -name $@ | sed "s@$PWD/@@" }
function clip()   { [ -t 0 ] && pbpaste || pbcopy }
function get_and_unzip() { unzip =( wget -qO- $1 ) }
function be() {
  case "$1" in
      rspec)
          bundle exec $@; noti
          ;;
      *)
          bundle exec $@
          ;;
  esac
}
function sp() {
  case "$1" in
      rspec)
          bundle exec spring $@; noti
          ;;
      *)
          bundle exec spring $@
          ;;
  esac
}

# https://devcenter.heroku.com/articles/one-off-dynos
function he-prods() {
  heroku run -a shopee-channel -- SENTRY_DSN=false SHOPEE_DEBUG=true NEW_RELIC_AGENT_ENABLED=false APPSIGNAL_ACTIVE=false $@
}
function he-stages() {
  heroku run -a shopee-channel-staging -- SENTRY_DSN=false SHOPEE_DEBUG=true NEW_RELIC_AGENT_ENABLED=false APPSIGNAL_ACTIVE=false $@
}

# PATH
export PATH=$HOME/.rbenv/shims                                          # rbenv on top
export PATH=$PATH:$HOME/.nodebrew/current/bin                           # nodebrew
export PATH=$PATH:/usr/local/bin:/usr/local/sbin                        # homebrew
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/bin  # system
export PATH=$PATH:/usr/X11R6/bin:/usr/local/share/npm/bin:$GOPATH/bin   # apps

export EDITOR="$HOME/bin/subl -w"
export VISUAL="$HOME/bin/subl -w"
export GOPATH=$HOME/Projects/go
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='' # makes up/down search case sensitive
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh