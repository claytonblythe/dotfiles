export CLICOLOR=1
export LSCOLORS=GxFxhxDxcxegedhbhxGxGx
export EDITOR=/usr/bin/nano
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

PS1="\n\[\e[0;92m\]$(date +%Ym%md%d-%H:%M:%S) \w\n\[\e[0;91m\]clayton_macbook $\[\e[0;0m\] "

source "/Users/claytonblythe/.aliases.sh"

cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/


##
# Your previous /Users/claytonblythe/.bash_profile file was backed up as /Users/claytonblythe/.bash_profile.macports-saved_2017-02-18_at_14:31:41
##

# MacPorts Installer addition on 2017-02-18_at_14:31:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda3 4.3.1 installer
export PATH="/Users/claytonblythe/anaconda3/bin:$PATH"

