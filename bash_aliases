alias localip="hostname -I"
alias localip2="ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'"
alias howtosync="echo 'django-admin.py schemamigration proto4 --auto;  django-admin.py syncdb; django-admin.py migrate'"
alias beam='gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block'
alias disabletouchpad2="xinput --set-prop 'FSPPS/2 Sentelic FingerSensingPad' 'Device Enabled' 0"
alias disabletouchpad="xinput --disable 'ETPS/2 Elantech Touchpad'"
alias enabletouchpad="xinput --enable 'ETPS/2 Elantech Touchpad'"
alias enabletouchpad2="xinput --set-prop 'ETPS/2 Elantech Touchpad' 'Device Enabled' 1"
alias listtouchpad="xinput --list"
alias clearpyc='find . -name \*.pyc -delete'
alias q='exit'
alias re='source ~/.bash_aliases'
alias al='gvim ~/.bash_aliases'
alias ..='cd ..'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias ps="ps auxf"
alias g='gvim'
alias gcam='git commit -am '
alias woaw='cd ~/wk/Adaptwater'
alias clrpp='export PYTHONPATH="/home/atd/wk/Adaptwater/"'
alias woraw='cd ~/wk/real_adaptwater'
alias woaaw='cd ~/wk/actual_adaptwater/'
alias woawwv='cd ~/wk/Adaptwater && vagrant up && vagrant ssh'
alias wocwa='cd ~/wk/climatic_webapp'
alias wodjtut='cd ~/wk/djtut/'
alias wosdatcrm='cd ~/wk/sdatcrm/app'
alias vus='vagrant up && vagrant ssh'
alias vh='vagrant halt'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vhus='vagrant halt && vagrant up && vagrant ssh'
alias vdhus='vagrant destroy && vagrant halt && vagrant up && vagrant ssh'
alias ls='ls -alt'
alias ssh_adaptwater='setTitle ssh-Adaptwater; ssh adaptwater.com.au'
alias ssh_elevation='setTitle ssh-Elevation; ssh ashishthedev@elevation.adaptinfrastructure.com; ssh-Elevation'
alias ssh_pdfserver='setTitle ssh-pdfserver; ssh ashishthedev@elevation.adaptinfrastructure.com; ssh-Elevation'
alias ssh_hazard='setTitle ssh-Hazard; ssh hazard.adaptwater.com.au'
alias ssh_hazardv2='setTitle ssh-HazardV2; ssh ashishthedev@hazardv2.adaptinfrastructure.com'
alias ssh_alpha='setTitle ssh-alpha; ssh ashishthedev@alpha.adaptinfrastructure.com'
alias ssh_clopitron='setTitle ssh-clopitron; ssh ashishthedev@104.199.192.170'
alias ssh_skylurch='setTitle ssh-skylurch; ssh ashishthedev@104.199.176.155'
alias ssh_jsrfoundry1-28feb2017='setTitle ssh-jsrfoundry1-28feb2017; ssh ashishthedev@104.198.90.66'
alias useCredentialHelper='git config credential.helper store'
alias eelevation='gvim scp://ashishthedev@elevation.adaptinfrastructure.com//home/ashishthedev/elevation/elevation.py'
alias gcloudDeploy='date && gcloud preview app deploy app.yaml --promote && date'
alias gcloudDeployNoPromote='date && gcloud preview app deploy app.yaml && date'
alias runhq10='for run in {1..10}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq100='for run in {1..100}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq1000='for run in {1..1000}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq10K='for run in {1..10000}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'

fiy(){ grep -i -r $1 --include "*.yaml"; }
findInAll(){ grep -i -r $1 --include "*"; }
alias fia=findInAll

findInPython(){
 grep -i -r $1 --include "*.py" --exclude-dir=migrations
 }
alias fip=findInPython

setTitle(){
echo -en "\033]0;$1\a"
}

findInJS(){
 grep -i -r $1 --include "*.js"
 }
alias fij=findInJS

findInHTML(){
 grep -i -r $1 --include "*.html"
 }
alias fih=findInHTML

findInGo(){
grep -i -r $1 --include "*.go"
}
alias fig=findInGo

alias genVerNum="date -u +%Y.%m.%d.%H.%M.%S"
alias vbrut32="vagrant box remove ubuntu/trusty32 && echo '____' && echo && echo 'Ubuntu will now be downloaded from internet' && echo && echo '____'"
alias vbadut32="cd ~/Desktop && vagrant box add --name=ubuntu/trusty32 ubuntu_adaptwater.box && cd - && echo '____\nUpgraded Ubuntu In Place\n____\n'"


findFile(){
find . -name "*$1*"
}
alias ff=findFile

#How to sync a fork
#git fetch upstream
#git checkout demo
#git merge upstream/demo
alias syncaw_forked_demo_with_upstream='cd ~/wk/Adaptwater/ && git fetch upstream && git checkout demo && git merge upstream/demo'


alias patchtodropbox=createPatchWithName
createPatchWithName(){
git diff > ~/Dropbox/patches/$1
}

oitsTabs(){
gnome-terminal \
--tab -t "itsFrontEnd"    -e "bash"                         --working-directory="/home/atd/wk/itsweb-0002/library/" \
--tab -t "itsFrontEnd2"   -e "bash -c 'export BASH_POST_RC=\"gvim feapp/model_datastore.py\"; exec bash'"   --working-directory="/home/atd/wk/itsweb-0002/library/" \
--tab -t "itsFrontEnd3"   -e "bash -c 'export BASH_POST_RC=\"python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check\"; exec bash'"   --working-directory="/home/atd/wk/itsweb-0002/library/ --debug" \


google-chrome http://localhost:8080/ &
exit
}

otaxbotTabs(){
gnome-terminal \
--tab -t "tbGAEServer" -e "./ubuntu_gae_server_port.sh"    --working-directory="/home/atd/wk/taxbot/bin" \
--tab -t "tbFrontEnd"    -e "bash"                         --working-directory="/home/atd/wk/taxbot/" \
--tab -t "tbFrontEnd2"   -e "bash"                         --working-directory="/home/atd/wk/taxbot/" 

google-chrome http://localhost:5100/
exit
}

ohazardv2(){
gnome-terminal \
--tab -t "vus"             -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/hazardv2" \
--tab -t "hazardNew"       -e "bash"                                --working-directory="/home/atd/wk/hazardv2" \
--tab -t "hazardNew"       -e "bash"                                --working-directory="/home/atd/wk/hazardv2" \
--tab -t "ssh-Hazardv2"   -e "bash -c 'ssh ashishthedev@hazardv2.adaptinfrastructure.com'"     --working-directory="/home/atd/wk/hazardv2/"

google-chrome http://localhost:8484/ &
exit
}

otestClrTabs(){
gnome-terminal \
--tab -t "clrFrontEnd"     -e "bash -c 'export BASH_POST_RC=\"gvim testapp/clrfapp/templates/report.html\"; exec bash'"   --working-directory="/home/atd/wk/clrFrontEnd" \
--tab -t "GAE clrFrontEnd" -e "./ubuntu_gae_server.sh"    --working-directory="/home/atd/wk/clrFrontEnd/testapp/bin" \
--tab -t "vus"             -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango1"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango2"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
--tab -t "pdfserver"       -e "bash -c 'export BASH_POST_RC=\"workon pdfserver;python run.py\"; exec bash'"  --working-directory="/home/atd/wk/pdfserver" \
--tab -t "SSH"             -e "bash -c 'ssh adaptwater.com.au'"     --working-directory="/home/atd/wk/climaterealty" \
--tab -t "ssh-Elevation"   -e "bash -c 'ssh ashishthedev@elevation.adaptinfrastructure.com'"     --working-directory="/home/atd/wk/elevation"

google-chrome http://localhost:5005/
exit
}

oclrPdfTabs(){
gnome-terminal \
--tab -t "clrFrontEnd"     -e "bash"                                --working-directory="/home/atd/wk/clrFrontEnd" \
--tab -t "GAE clrFrontEnd" -e "./ubuntu_gae_server.sh"    --working-directory="/home/atd/wk/clrFrontEnd/app/bin" \
--tab -t "vus"             -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango1"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango2"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
--tab -t "pdfserver"       -e "bash -c 'export BASH_POST_RC=\"workon pdfserver;python run.py\"; exec bash'"  --working-directory="/home/atd/wk/pdfserver" \
--tab -t "SSH"             -e "bash -c 'ssh adaptwater.com.au'"     --working-directory="/home/atd/wk/climaterealty" \
--tab -t "ssh-Elevation"   -e "bash -c 'ssh ashishthedev@elevation.adaptinfrastructure.com'"     --working-directory="/home/atd/wk/elevation"
google-chrome http://localhost:5000/
exit
}

oawTabs(){
gnome-terminal \
--tab -t "vus" -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/Adaptwater" \
--tab -t "AW1" -e "bash"                                --working-directory="/home/atd/wk/Adaptwater" \
--tab -t "AW2" -e "bash"                                --working-directory="/home/atd/wk/Adaptwater" \
--tab -t "SSH-Adaptwater" -e "bash -c 'ssh adaptwater.com.au'"     --working-directory="/home/atd/wk/Adaptwater"
exit

}

oalphaTabs(){
gnome-terminal \
--tab -t "vus" -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/alpha" \
--tab -t "AW1" -e "bash"                                --working-directory="/home/atd/wk/alpha" \
--tab -t "AW2" -e "bash"                                --working-directory="/home/atd/wk/alpha" \
--tab -t "SSH-Alpha" -e "bash -c 'ssh ashishthedev@alpha.adaptinfrastructure.com'"     --working-directory="/home/atd/wk/alpha"
exit

}

alias runitsserver='python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check --dev_appserver_log_level debug'
alias runitsserver_checksdk='python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ '
alias runitsserver_clear='python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check --clear_datastore --clear_search_indexes'
alias runitsserver2='python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --port 9090 --admin_host 0.0.0.0 --admin_port 9191 --storage_path /tmp/ --skip_sdk_update_check'
alias golivemanpack='pushd ~/wk/manpack/app && appcfg.py update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

installSolarized(){
sudo apt-get install -y wget unzip curl
cd
wget http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
mkdir -p ~/.vim/colors/
mv solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
}


############## FLASKY ###############
devflasky(){

tmux new-session -d -c ~/wk/flasky
gvim ~/wk/flasky/app/__init__.py
google-chrome http://localhost:5000/ 2>/dev/null &
tmux send-keys 'workon flasky' C-m
tmux send-keys 'cd ~/wk/flasky' C-m
tmux send-keys 'python manage.py runserver' C-m
tmux split-window -p 20 -v
tmux send-keys 'cd ~/wk/flasky' C-m
tmux new-window 
tmux -2 attach-session -d 
}

############## CLIMATEvALUATION ###############
devclimatevaluation(){

tmux new-session -d -c ~/wk/climaterealty
gvim -p ~/wk/clrFrontEnd/testapp/clrfapp/templates/report.html ~/wk/climaterealty/templates/test_climate_valuation_standard_form.html ~/wk/elevation/elevation.py ~/wk/climaterealty/proto4/process_user_form.py ~/wk/climaterealty/proto4/views.py ~/wk/pdfserver/pdfserver/api.py scp://ashishthedev@elevation.adaptinfrastructure.com//home/ashishthedev/pdfserver/pdfserver/api.py

google-chrome http://localhost:5005/ 2>/dev/null &
google-chrome http://localhost:8181/ 2>/dev/null &
google-chrome http://localhost:8282/ 2>/dev/null &
google-chrome http://localhost:9000/proto4/test-climate-valuation-standard-form 2>/dev/null &

tmux send-keys 'cd ~/wk/climaterealty && vagrant up && vagrant ssh -- -R 8181:localhost:8181' C-m
tmux split-window -p 20 -v 
tmux send-keys 'cd ~/wk/climaterealty' C-m

tmux new-window -n "local pdfserver"
tmux send-keys 'cd ~/wk/pdfserver && workon pdfserver && python run.py' C-m

tmux new-window -n "ssh GAE_testapp"
tmux send-keys 'cd ~/wk/clrFrontEnd/testapp/bin/ && ubuntu_gae_server.sh' C-m

tmux new-window -n "ssh adaptwater"
tmux send-keys 'ssh adaptwater.com.au' C-m

tmux new-window -n "ssh elevation"
tmux send-keys 'ssh ashishthedev@elevation.adaptinfrastructure.com' C-m

tmux new-window -n "local elevation"
tmux send-keys 'cd ~/wk/elevation/ && python elevation.py' C-m

tmux -2 attach-session -d 

#gnome-terminal \
#--tab -t "clrFrontEnd"     -e "bash -c 'export BASH_POST_RC=\"gvim testapp/clrfapp/templates/report.html\"; exec bash'"   --working-directory="/home/atd/wk/clrFrontEnd" \
#--tab -t "GAE clrFrontEnd" -e "./ubuntu_gae_server.sh"    --working-directory="/home/atd/wk/clrFrontEnd/testapp/bin" \
#--tab -t "vus"             -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/climaterealty" \
#--tab -t "clrDjango1"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
#--tab -t "clrDjango2"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
#--tab -t "pdfserver"       -e "bash -c 'export BASH_POST_RC=\"workon pdfserver;python run.py\"; exec bash'"  --working-directory="/home/atd/wk/pdfserver" \
#--tab -t "SSH"             -e "bash -c 'ssh adaptwater.com.au'"     --working-directory="/home/atd/wk/climaterealty" \
#--tab -t "ssh-Elevation"   -e "bash -c 'ssh ashishthedev@elevation.adaptinfrastructure.com'"     --working-directory="/home/atd/wk/elevation"
#
#google-chrome http://localhost:5005/
#exit
}

############## ALPHA ###############
devalpha(){
tmux new-session -d -c ~/wk/alpha
gvim ~/wk/alpha/proto4/ajax.py
google-chrome http://localhost:9000/ 2>/dev/null &
tmux send-keys 'cd ~/wk/alpha && vagrant up && vagrant ssh' C-m
tmux split-window -p 20 -v
tmux send-keys 'cd ~/wk/alpha' C-m
tmux new-window 
tmux send-keys 'cd ~/wk/alpha/proto4' C-m
tmux -2 attach-session -d 

}

############## ITS ###############
devits(){
cd ~/wk/itsweb-007/library
gvim ~/wk/itsweb-007/library/feapp/model_datastore.py
google-chrome http://localhost:8080/ 2>/dev/null &
tmux new-session -s itsweb -d
tmux rename-window "itsweb-007 on google-app-engine"
tmux send-keys "python ~/go_appengine/dev_appserver.py ~/wk/itsweb-007/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux split-window -p 30 -v
tmux -2 attach-session -t itsweb -d
}

alias goliveits='pushd ~/wk/itsweb-007/library && appcfg.py -A itsweb-007 update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

############## EMAILER ###############
devemailer(){
cd ~/wk/emailer/app
gvim -p ~/wk/emailer/app/main.py/views
google-chrome http://localhost:9494/ 2>/dev/null &
tmux new-session -s emailer9cash -d
tmux rename-window "emailer"
tmux send-keys "python localserver" C-m
tmux split-window -p 30 -v
tmux -2 attach-session -t emailer -d
}

############## 99CASH ###############
dev99cash(){
cd ~/wk/99cash/app
gvim -p ~/wk/99cash/app/feapp/main.py ~/wk/99cash/app/feapp/templates/auth/login.html ~/wk/99cash/app/source/scss/main.scss
google-chrome http://localhost:8081/ 2>/dev/null &
tmux new-session -s 99cash -d
tmux rename-window "99cash on google-app-engine"
#tmux send-keys "gcloud preview app/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux send-keys "gulp devserver" C-m
tmux split-window -p 30 -v
tmux -2 attach-session -t 99cash -d
}

alias golive99cash='pushd ~/wk/99cash/app && appcfg.py -A cash-99 update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

############## TRACKCOURIERIO ###############
devtrackcourierio(){
cd ~/wk/trackcourierio/app
gvim ~/wk/trackcourierio/app/hello.go
google-chrome http://localhost:8081/ 2>/dev/null &
tmux new-session -s trackcourierio -d
tmux rename-window "trackcourierio on google-app-engine"
#tmux send-keys "gcloud preview app/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux send-keys "gulp devserver" C-m
tmux split-window -p 30 -v
tmux -2 attach-session -t trackcourierio -d
}

alias golivetrackcourierio='pushd ~/wk/trackcourierio/app && appcfg.py -A trackcourierio update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'
alias gotesttrackcourierio='pushd ~/wk/trackcourierio/app && appcfg.py -A trackcourierio update . --email="ashishthedev@gmail.com" --version="test" --noauth_local_webserver $*'

############## ITS OLD ONLY FOR TESTING ###############
devits2(){
cd ~/wk/itsweb-0002/library
gvim ~/wk/itsweb-0002/library/feapp/model_datastore.py
google-chrome http://localhost:8080/ 2>/dev/null &
tmux new-session -s itsweb -d
tmux rename-window "itsweb-0002 on google-app-engine"
tmux send-keys "python ~/go_appengine/dev_appserver.py ~/wk/itsweb-0002/library/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux split-window -p 20 -v
tmux -2 attach-session -t itsweb -d
}
alias goliveits0002='pushd ~/wk/itsweb-0002/library && appcfg.py -A itsweb-0002 update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'
alias goliveits007on0002='pushd ~/wk/itsweb-007/library && appcfg.py -A itsweb-0002 update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

############## RASPBERRY PI ###############
devrpi(){
cd ~/wk/rpi/
tmux new-session -s rpi -d
tmux rename-window "rpi"
tmux split-window -p 20 -v
tmux -2 attach-session -t rpi -d
}

############## MANPACK ###############
devmanpack(){
cd ~/wk/manpack/app
gvim ~/wk/manpack/app/handlers.go
google-chrome http://localhost:8080/ 2>/dev/null &
tmux new-session -s manpack -d
tmux rename-window "manpack on google-app-engine"
tmux send-keys "python ~/go_appengine/dev_appserver.py ~/wk/manpack/app/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux split-window -p 20 -v
tmux -2 attach-session -t manpack -d
}

############## SETTLE.CASH ###############
devsettlecash(){
cd ~/wk/settlecash/app
gvim ~/wk/settlecash/app/handlers.go
google-chrome http://localhost:8080/ 2>/dev/null &
tmux new-session -s settlecash -d
tmux rename-window "settlecash on google-app-engine"
tmux send-keys "python ~/go_appengine/dev_appserver.py ~/wk/settlecash/app/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux split-window -p 20 -v
tmux -2 attach-session -t settlecash -d
alias golivesettlecash='pushd ~/wk/settlecash/app && appcfg.py update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

}

############## SOFTWAREFORCOLLEGES ###############
devsoftwareforcolleges(){
cd ~/wk/softwareforcolleges/app
gvim ~/wk/softwareforcolleges/app/handlers.go
google-chrome http://localhost:8080/ 2>/dev/null &
tmux new-session -s softwareforcolleges -d
tmux rename-window "softwareforcolleges on google-app-engine"
tmux send-keys "python ~/go_appengine/dev_appserver.py ~/wk/softwareforcolleges/app/app.yaml --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /tmp/ --skip_sdk_update_check" C-m
tmux split-window -p 20 -v
tmux -2 attach-session -t softwareforcolleges -d
alias golivesoftwareforcolleges='pushd ~/wk/softwareforcolleges/app && appcfg.py update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

}
alias golivesoftwareforcolleges='pushd ~/wk/softwareforcolleges/app && appcfg.py update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'
