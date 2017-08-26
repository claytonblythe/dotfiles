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
alias proj='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects'
alias col='cd ~/Collections'
alias dp='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/deepython'
alias dotfiles='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/dotfiles'
alias el='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/elegantdp'

## Fun ##
alias sendweather='/usr/local/bin/python3 /users/claytonblythe/Desktop/Mega/python_projects/web_scraping/Wunderground_scrape_text.py'
alias weather='pywu fetch f967d21f73422db6 'Dearborn,MI' &&
printf "Dearborn,Michigan\n" &&
printf "" &&
pywu forecast shortdate &&
printf "Current: " &&
pywu current condition &&
printf "Feels like: " &&
pywu current feelslike_f &&
printf "High: " &&
pywu forecast high_f &&
printf "Low: " &&
pywu forecast low_f &&
pywu forecast condition &&
printf "Predicted rain (in): " &&
pywu forecast rain_in'
alias make_gif='convert -delay 5  -loop 0 *.png newly_made.gif && rm *.png && qlmanage -p newly_made.gif & '
alias myip='curl http://ifconfig.me/ip'

## Github ##
alias new_project='/users/claytonblythe/Desktop/Mega/Data_Science/projects/version_control/scripts/new_project.bash'
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

alias notebook='jupyter notebook'
alias logspeed='date >> /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speeds.log && /usr/local/bin/speedtest-cli --simple | sed -n 2,3p >> /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speeds.log && /users/claytonblythe/anaconda3/bin/python3 /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speed_plotter.py &'
alias rtv='rtv --monochrome --ascii'

## sshing ##
alias pi='ssh pi@10.1.10.42'
alias kodi='ssh root@10.1.10.42'
alias mac='ssh claytonblythe@127.0.0.1'
alias sftphd='sftp cblythe2@hpchd1e.hpc.ford.com'
alias elmo='ssh cblythe2@elmo.rotundact.ford.com'
alias sftpelmo='sftp cblythe2@elmo.rotundact.ford.com'

## File Editing / Misc Commands ##
alias v='vim $1'
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

alias serve='wkill && dp && make devserver & sleep .8 && open http://localhost:8000'

alias dpupdate='aws s3 sync /users/claytonblythe/Desktop/Mega/Data_Science/projects/deepython/output s3://deepython.com/ && open http://deepython.com.s3-website.us-east-2.amazonaws.com/'