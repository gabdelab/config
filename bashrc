# Git branch in prompt.
# Syntactic sugar for ANSI escape sequences
txtred='\e[0;31m' # Red
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtcyn='\e[0;36m' # Cyan


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="$txtblu\u$txtwht $txtred\W\[\033[32m\]$txtcyn\$(parse_git_branch)\[\033[00m\] $ "

export PATH=/usr/local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -alh'

alias paris='cd ~/Documents/paris/; source env/bin/activate'
alias grep='grep --color=auto'

alias iTunesStats='cd /Users/gabrieldelaboulaye/Documents/iTunesStats; source env/bin/activate'
alias zeroes='iTunesStats; python analyse.py -o album -s 2000 -e 2009'
alias nineties='iTunesStats; python analyse.py -o album -s 1990 -e 1999'
alias eighties='iTunesStats; python analyse.py -o album -s 1980 -e 1989'
alias seventies='iTunesStats; python analyse.py -o album -s 1970 -e 1979'
alias sixties='iTunesStats; python analyse.py -o album -s 1960 -e 1969'
alias artists='iTunesStats; python analyse.py -o artist'
