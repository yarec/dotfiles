## .zshrc

    sudo-command-line() {
        [[ -z $BUFFER ]] && zle up-history
        [[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
        zle end-of-line
    }
    zle -N sudo-command-line
    bindkey "\e\e" sudo-command-line

    #alias ins='sudo apt-get install'
    alias czip="find -name '*.zip' |xargs rm -v"

    if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'

        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'
    fi

    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'

    alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

    # use gnu-tools
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

    PATH=/Users/rt/app/apache-maven-3.3.3/bin:$PATH
    M2_HOME=/Users/rt/app/apache-maven-3.3.3
