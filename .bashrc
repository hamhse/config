#
# Don't put duplicate lines in the history. See bash(1) for more options
#
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT="%h/%d - %H:%M:%S "
HISTSIZE=8000

#
# Set the correct xterm settings
#
if [ "$TERM" = "xterm" ] ; then
   if [ -e /usr/share/terminfo/x/xterm+256color ]; then
      export TERM='xterm-256color'
   else
      export TERM='xterm-color'
   fi
fi

#
# ALIAS Commands
#
# Enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
   eval `dircolors -b`
   alias ls='ls --color=always'
   alias dir='ls --color=auto --format=vertical'
   alias vdir='ls --color=auto --format=long'
fi
alias tree='tree -Csu' 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias vim='vim -X'
alias vi='vi -X'
alias nautilus='nautilus --no-desktop'

#Grabs the disk usage in the current directory
alias usage='du -ch | grep total'
#Gets the total disk usage on your machine
alias totalusage='df -hl --total | grep total'
#Shows the individual partition usages without the temporary memory values
alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'
#Gives you what is using the most space. Both directories and files. Varies on
#current directory
alias most='du -hsx * | sort -r | head -10'

alias tmux='tmux -2'

alias astyle-kern='astyle --mode=c --style=linux --indent=tab=8 --pad-oper --pad-header --max-code-length=80 --break-after-logical'


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


PS1='\w \$ '
PROMPT_DIRTRIM=2
