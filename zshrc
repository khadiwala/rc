# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ravi/.zshrc'

autoload -Uz compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# End of lines added by compinstall

# completion
zstyle ':completion:*' menu select
setopt completealiases

#export PROMPT='[%n@%m:%c]%# '
autoload -U promptinit
promptinit
prompt adam1

export MPD_PORT='7778'

export PATH=$PATH:/home/ravi/scripts

# command alias
alias grep='grep --color=auto' 
alias vi='vim'
alias mwin='sudo mount -t ntfs -o nls=utf8,umask=0222 /dev/sda3 /media/windows'
alias df='df -h'
alias du='du -h -c'
alias mkdir='mkdir -p -v'
alias ping='ping -c 4'
#alias mp='screen -A -m -d -S mp mplayer -vo vaapi'
alias mp='screen -A -m -d -S mp mplayer'
alias setbg='feh --bg-scale'
alias rmv='rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files'
alias rcp='rsync --partial --progress --append --rsh=ssh -r -h'

#ls
alias ls='ls --color=auto' 
alias ll='ls -lh'
alias lx='ll -BX'
alias lz='ll -rS'
alias lt='ll -rt'

#pdf
alias pdf='apvlv'

#pacman
alias pacman='pacman-color'

#ftp
alias raspi='curlftpfs oscorp /home/ravi/ftp/ -o user=ravi:sufjan17'

#color man
man() {
        env \
                    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
                    LESS_TERMCAP_md=$(printf "\e[1;31m") \
                    LESS_TERMCAP_me=$(printf "\e[0m") \
                    LESS_TERMCAP_se=$(printf "\e[0m") \
                    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
                    LESS_TERMCAP_ue=$(printf "\e[0m") \
                    LESS_TERMCAP_us=$(printf "\e[1;32m") \
                        man "$@"
}

function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

#for screen
stty stop undef
stty start undef

#transparent terminal
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

. /home/ravi/.bash_aliases
