# Stylish Terminal

blue=$(tput setaf 33);
purple=$(tput setaf 147);
green=$(tput setaf 40);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1="\[${green}\](\$(basename \$CONDA_DEFAULT_ENV)) ";  # virtual env
PS1+="\[${blue}\]\u";	# username
PS1+="\[${white}\] at ";
PS1+="\[${purple}\]\h";	# host
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\w";	# working directory
PS1+="\[${reset}\]\n";
PS1+="\[${white}\]\$ \[${reset}\]"; # $ and reset color
export PS1;
export CONDA_CHANGEPS1=false;

# ALIASES
alias python=python3
alias jl="jupyter lab"
alias subl="open -a 'Sublime Text'"
alias pip=pip3
alias hstart="/.usr/local/Cellar/hadoop/3.2.1/sbin/start-all.sh"
alias hstop="/.usr/local/Cellar/hadoop/3.2.1/sbin/stop-all.sh"

# \h hostname up to the fi∞rst .
# \n newline
# \s name of the shell
# \t current time in 24-hour format
# \u username of current user
# \w current working directory
# \W basename of the current working directory



# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/giacomomiolo/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/giacomomiolo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/giacomomiolo/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/giacomomiolo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# PATHS

export PATH=/usr/local/bin/python3:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH
export PATH=/Users/giacomomiolo/Downloads/apache-maven-3.6.3/bin:$PATH