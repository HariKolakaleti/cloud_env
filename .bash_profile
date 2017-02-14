#-------------------
# MAC Specific
#-------------------
if [ $(uname -s) == Darwin ]; then
    # Setting PATH for Python 3.5
    PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
    export PATH

    # added by Anaconda2 4.2.0 installer
    export PATH="/Users/harik/anaconda/bin:$PATH"
fi

#-------------------
# Linux Specific
#-------------------
if [ $(uname -s) == Linux ]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'

    # for gitHub
    git config --global user.name "Hari Kolakaketi (Checkin from GoogleCloud)"
    git config --global user.email hari.kolakaleti@gmail.com
    git config --global core.editor "emacs"
    git config --global credential.helper "cache --timeout=3600"

    # added by Anaconda2 4.2.0 installer
    export PATH=/home/hari.kolakaleti/anaconda3/bin:$PATH
fi

#-------------------
# Personnal Aliases
#-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias lt='ls -alt|more'
alias clean='rm -rf *~'
alias src='source ~/.bash_pofile'
alias emacs='open -a /Applications/Emacs.app $1'
alias ml='cd /Users/harik/work/courses'
alias tflow='source activate tf_3.6'
alias gcl-ssh='ssh -X -i ~/.ssh/GCL.ssh.key hari.kolakaleti@104.196.245.197'

#-------------------
# VNC
#-------------------

vncServer() {
    vncserver -geometry 1274x708 :$1
}

vncServerDesktop() {
    vncserver -geometry 2096x1208 :$1
}

vncServerKill() {
    vncserver -kill :$1
}

alias vncs=vncServer
alias vncsd=vncServerDesktop
alias vnck=vncServerKill

#-------------------
# Temp Aliases
#-------------------

