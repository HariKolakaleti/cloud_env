
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#-------------------
# Personnal Aliases
#-------------------
# Generic
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias lt='ls -alt|more'
alias clean='rm -rf *~ .*~'
alias ml='cd /Users/harik/work/courses'
alias src='source ~/.bash_profile'

# For ML
alias gcl-ssh='ssh -i ~/.ssh/GCL.ssh.key hari.kolakaleti@104.199.121.220'
alias tflow='source activate tensorflow'
alias ipy='ipython'

# start vnc
vncServer() {
    vncserver -geometry 1274x708 :$1
}
alias vncs=vncServer

vncServerDesktop() {
    vncserver -geometry 2096x1208 :$1
}
alias vncsd=vncServerDesktop

vncServerKill() {
    vncserver -kill :$1
}
alias vnck=vncServerKill

#-------------------
# for linux
#-------------------
if [[ $(uname -s) == Linux ]]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

#-------------------
# Temp Aliases
#-------------------
alias ex='cd /Users/harik/work/courses/machine_learning_courcera/machine-learning-ex4/ex4'

# added by Anaconda2 4.2.0 installer
export PATH=/home/hari.kolakaleti/anaconda2/bin:$PATH

# for gitHub
git config --global user.name "Hari Kolakaketi (Checkin from GoogleCloud)"
git config --global user.email hari.kolakaleti@gmail.com
git config --global core.editor "emacs"
git config --global credential.helper "cache --timeout=3600"

