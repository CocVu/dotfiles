#
# ~/.bashrc
#

[[ $- != *i* ]] && return
[[ -f ~/.aliases ]] && . ~/.aliases


alias ls='ls --color=auto'
alias grep='grep --color=auto'

#export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

set -o vi
export EDITOR=vim
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre
# export JAVA=/usr/lib/jvm/java-8-openjdk/jre/bin

# export PATH=/usr/lib/jvm/java-8-openjdk/jre/bin:$PATH

# export HADOOP_HOME=/home/coc/hadoop-2.9.0
# export HADOOP_CONF_DIR=/home/coc/hadoop-2.9.0/etc/hadoop
# export HADOOP_MAPRED_HOME=/home/coc/hadoop-2.9.0
# export HADOOP_COMMON_HOME=/home/coc/hadoop-2.9.0
# export HADOOP_HDFS_HOME=/home/coc/hadoop-2.9.0
# export YARN_HOME=/home/coc/hadoop-2.9.0
# export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
# export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

#add hadoop 2 bin/ directory to PATH
# export HADOOP_PID_DIR=/home/coc/hadoop-2.7.5/tmp/pid

#export PATH=$PATH:/home/coc/hadoop-2.9.0/bin
#export PATH=$PATH:/home/coc/android-studio/bin
# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/nam/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/nam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nam/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/nam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
