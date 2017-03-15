#-------------------
# MAC Specific
#-------------------
if [ $(uname -s) == Darwin ]; then
    # Setting PATH for Python 3.5
    PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
    export PATH

    # added by Anaconda2 4.2.0 installer
    export PATH="/Users/harik/anaconda/bin:$PATH"

    # misc aliases
    alias emacs='open -a /Applications/Emacs.app $1'

    # for tensorflow & mac
    alias tf27='source activate tf_2.7'
    alias tf35='source activate tf_3.5'
    alias tfl35='source activate tflearn'

    # for Google Cloud SSH
    setupGclSSH() {
	GCL_IP_ADDR=$1
	alias gcl-ssh='ssh -i ~/.ssh/GCL.ssh.key hari.kolakaleti@$GCL_IP_ADDR'
	alias gcl-jpynb='ssh -f -N -L localhost:8888:0.0.0.0:8888 hari.kolakaleti@$GCL_IP_ADDR'
    }
    alias gcl=setupGclSSH

    removeSSH_Host() {
	grep -v $GCL_IP_ADDR ~/.ssh/known_hosts > /tmp/known_hosts
	mv -f /tmp/known_hosts ~/.ssh/known_hosts
    }
    alias gcl-rmhost=removeSSH_Host

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

    # remote jupyter notebook
    startRemoteJupyterNotebook() {
	jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser &       
	disown `ps -elf | grep jupyter | grep python | awk '{print $4}'`
    }

    alias jpynb=startRemoteJupyterNotebook

    killJupyterNotebook() {	
	kill -9 `ps -elf | grep jupyter | grep python | awk '{print $4}'`
    }

    alias kill-jpynb=killJupyterNotebook

fi

#-------------------
# Personnal Aliases
#-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias lt='ls -alt|more'
alias clean='rm -rf *~ .*~ '
alias so='source ~/.bash_profile'
alias src='source ~/.bash_profile'
alias ml='cd /Users/harik/work/courses'
alias tf36='source activate tf_36'

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

#-------------------------
# SSH for gitHub
#-------------------------
sshGitHub() {
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/github
}

alias gitssh=sshGitHub

#-------------------
# Temp Aliases
#-------------------

# Google Cloud Windows Server password
#  NKCh8B%40L^+*.i
