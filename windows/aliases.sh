# Author: Clayton Blythe, claytondblythe@gmail.com

## File navigation ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -l -h'
mkcd () { mkdir -p "$1" && cd "$1"; }
alias x='exit'
alias c='clear'
alias h='history'
alias j='jobs -l'
alias b='cd -'
alias mem='top -o mem'
alias cpu='top -o cpu'
alias dp='cd ~/github/deepython'
alias dotfiles='cd ~/github/dotfiles'

## Fun ##
alias myip='curl http://ifconfig.me/ip'

## Github ##
alias v='vim'
alias l='ls'
alias la='ls -lAh'
alias gp='git push origin master'
alias gl='git log -n 10 --graph --pretty=format:"%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gaa='git add --all'
alias push='git push'
alias pull='git pull'
alias gs='git status'
clone () { git clone https://github.com/claytonblythe/$1; }
gcp () { git add --all && git commit -m "$1" && git push origin master; }

alias jn='jupyter notebook'
alias rtv='rtv --monochrome --ascii'

## sshing ##
alias pi='ssh pi@10.1.10.42'
alias kodi='ssh root@10.1.10.42'
alias mac='ssh claytonblythe@127.0.0.1'
alias sftphd='sftp cblythe2@hpchd1e.hpc.ford.com'
alias elmo='ssh cblythe2@elmo.rotundact.ford.com'
alias sftpelmo='sftp cblythe2@elmo.rotundact.ford.com'

## File Editing / Misc Commands ##
alias vimal='vim ~/.aliases.sh'
alias please='sudo $(history -p !!)'

## Docker Aliases ##
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dbu() { docker build -t=$1 .; }
# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"
# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
alias di='docker images'
alias dpa='docker ps -a'
alias dps='docker ps'
alias dl='docker ps -l -q'
alias dka='docker rm $(docker ps -a -q)'
alias imgs='docker images'
alias ct='docker ps -a'
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dipl='docker inspect "docker ps -l -q"'
dbu() { docker build -t=$1 .; }
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
## Blogging Aliases ##
wkill () 
{
kill $(lsof -i tcp:8000 | grep python3.6 | awk '{print $2}')  
} &> /dev/null

serve ()
{
kill $(lsof -i tcp:8000 | grep python3.6 | awk '{print $2}')&
(pelican content && cd output && python -m pelican.server & open http://localhost:8000)&
}

alias dpupdate='aws s3 sync /users/claytonblythe/Desktop/Mega/Data_Science/projects/deepython/output s3://deepython.com/'
