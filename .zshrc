export SVN_EDITOR=vi
export PATH=$PATH/Applications
source ~/.nvm/nvm.sh
export PATH=$PATH:$HOME/node_modules/.bin
#for feedbin settings
export AWS_ACCESS_KEY_ID=aoisjf3j23oij23f

# Uncomment this and comment the above to enable the builtin vi(1) command
# line editor in sh(1), e.g. ESC to go into visual mode.
# set -o vi

###################
# tacos described #
###################
# no beep sound
setopt nobeep
autoload -U compinit
compinit
# history of directories
setopt auto_pushd
# history of executed command
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history

# some useful aliases
alias h='fc -l'
alias j=jobs
alias m=$PAGER
alias ls='ls -F'
alias la='ls -lao'
alias ll='ls -lao'
alias l='ls -l'
alias g='egrep -i'
alias p="ping 8.8.8.8"
alias gnuemacs='emacs'
alias ducks='du -cks * | sort -rn | head -n 11'
alias mplayer='mplayer -really-quiet -loop 0'
alias jadde='jad -8 -d src -s .java -r ~ **/*.class'

#rails
alias s_rails='spring rails'
alias s_rake='spring rake'

setopt prompt_subst
local RED=$'%{\e[1;31m%}'
local BLUE=$'%{\e[1;36m%}'
local DEFAULT=$'%{\e[1;0m%}'
case ${UID} in
0)
PROMPT="[%n@$BLUE%m$DEFAULT] %(!.#.$)(%?)"
RPROMPT="[%(3~,%-1~/.../%1~,%~):${WINDOW:+"[$WINDOW]"}]"
;;
*)
PROMPT="[%n@$RED%m$DEFAULT] %(!.#.$)(%?)"
RPROMPT="[%(3~,%-1~/.../%1~,%~):${WINDOW:+"[$WINDOW]"}]"
;;
esac

PATH="/Developer/usr/bin:/bin:/usr/bin:/usr/sbin:/sbin:/Developer/usr/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/Applications/gnuplot.app/bin/:/Applications/Wireshark.app/Contents/MacOS/:/Applications/android-sdk-macosx/tools/:/Applications/android-sdk-macosx/platform-tools/:/Applications/android-sdk-macosx/platform-tools/dex2jar/:/Users/fjwr38/Developer/android-ndk-r8d:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/share/npm/bin"

typeset -ga chpwd_functions

function _naverc_check() {
if [[ -f '.naverc' ]] ; then
  source '.naverc'
fi
}

chpwd_functions+=_naverc_checkexport CC=/usr/bin/gcc-4.2

#rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
