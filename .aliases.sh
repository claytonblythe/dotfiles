alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias h='history'
alias j='jobs -l'
alias mem='top -o mem'
alias cpu='top -o cpu'
alias proj='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects'
alias serve='pelican content && cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/deeppython/output && python -m pelican.server & open http://localhost:8000'
alias imgs='docker images'
alias ct='docker ps -a'

alias dp='cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/deeppython'
alias thermotime='open /Users/claytonblythe/Desktop/Mega/Senior\ Year/Thermodynamics/*2015* && open /Users/claytonblythe/Desktop/Mega/Senior\ Year/Thermodynamics/*2014* && open /Users/claytonblythe/Downloads/Appendix1_SIunits.pdf'
alias sendweather='/usr/local/bin/python3 /users/claytonblythe/Desktop/Mega/python_projects/web_scraping/Wunderground_scrape_text.py'
alias sendmeals='/usr/local/bin/python3 /Users/claytonblythe/Desktop/Mega/python_projects/web_scraping/meals.py'
alias weather='pywu fetch f967d21f73422db6 'Pella,IA' &&
printf "Pella,Iowa\n" &&
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

alias weather_tomorrow='pywu fetch f967d21f73422db6 'Pella,IA' &&
printf "Pella,Iowa\n" &&
printf "" &&
pywu forecast shortdate --day 1 &&
printf "High: " &&
pywu forecast high_f --day 1 &&
printf "Low: " &&
pywu forecast low_f --day 1 &&
printf "Condition: "
pywu forecast condition --day 1 &&
printf "Predicted rain (in): " &&
pywu forecast rain_in --day 1'


alias meals='/usr/local/bin/python3 ~/Desktop/Mega/python_projects/web_scraping/meals_print.py'
alias meals_tomorrow='/usr/local/bin/python3 ~/Desktop/Mega/python_projects/web_scraping/meals_tomorrow_print.py' 
alias meals_tomorrow_send='/usr/local/bin/python3 ~/Desktop/Mega/python_projects/web_scraping/meals_tomorrow.py'


alias make_gif='convert -delay 5  -loop 0 *.png newly_made.gif && rm *.png && qlmanage -p newly_made.gif & ' 

alias new_project='/users/claytonblythe/Desktop/Mega/Data_Science/projects/version_control/scripts/new_project.bash'
alias v='vim'
alias l='ls'
alias gp='git push origin master'
alias gaa='git add --all'
alias push='git push'
alias pull='git pull'
alias gs='git status'
alias notebook='jupyter notebook'
alias logspeed='date >> /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speeds.log && /usr/local/bin/speedtest-cli --simple | sed -n 2,3p >> /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speeds.log && /users/claytonblythe/anaconda3/bin/python3 /users/claytonblythe/Desktop/Mega/Data_Science/projects/wifi_speed_tracking/code/wireless_speed_plotter.py &'
alias jn='(cd /users/claytonblythe/Desktop/Mega/Data_Science/projects/baseball_betting) && (jupyter notebook)'

alias rtv='rtv --monochrome --ascii'
alias pi='ssh root@192.168.1.20'
