export CLICOLOR=1
export LSCOLORS=GxFxhxDxcxegedhbhxGxGx
export EDITOR=/usr/bin/nano
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
export PATH="/usr/local/bin:$PATH"
export CLICOLOR=1

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

PS1="\n\[\e[0;92m\]$(date +%Ym%md%d-%H:%M:%S) \w\n\[\e[0;91m\]clayton_macbook $\[\e[0;0m\] "
source ~/.bashrc

