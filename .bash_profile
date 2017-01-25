
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#-------------------
# Personnal Aliases
#-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias lt='ls -alt|more'
alias clean='rm -rf *~'
alias ml='cd /Users/harik/work/courses'
alias gcl-ssh='ssh -i ~/.ssh/GCL.ssh.key hari.kolakaleti@104.199.121.220'

#-------------------
# Temp Aliases
#-------------------
alias ex='cd /Users/harik/work/courses/machine_learning_courcera/machine-learning-ex4/ex4'

# added by Anaconda2 4.2.0 installer
export PATH=/home/hari.kolakaleti/anaconda2/bin:$PATH

# for gitHub
git config --global user.name "Hari Kolakaketi (Checkin from GoogleCloud)"
git config --global user.email hari.kolakaleti@gmail.com

