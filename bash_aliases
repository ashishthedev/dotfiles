alias beam='gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block'
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
alias useCredentialHelper='git config credential.helper store'
alias eelevation='gvim scp://ashishthedev@elevation.adaptinfrastructure.com//home/ashishthedev/elevation/elevation.py'
alias gcloudDeploy='date && gcloud preview app deploy app.yaml --promote && date'
alias gcloudDeployNoPromote='date && gcloud preview app deploy app.yaml && date'
alias runhq10='for run in {1..10}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq100='for run in {1..100}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq1000='for run in {1..1000}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'
alias runhq10K='for run in {1..10000}; do time curl "http://hazard.adaptwater.com.au/query?h=All&coordinates=-33.779983,151.275935"; done'

findInAll(){ grep -i -r $1 --include "*"; }
alias fia=findInAll

findInPython(){
 grep -i -r $1 --include "*.py"
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
alias goliveits='pushd ~/wk/itsweb-0002/library && appcfg.py update . --email="ashishthedev@gmail.com" --version="live" --noauth_local_webserver $*'

installSolarized(){
sudo apt-get install -y wget unzip curl
cd
wget http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
mkdir -p ~/.vim/colors/
mv solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
}

devalpha(){
tmux new-session -d -c ~/wk/alpha
tmux send-keys 'cd ~/wk/alpha && vagrant up && vagrant ssh' C-m
tmux split-window -p 20 -v
tmux send-keys 'cd ~/wk/alpha' C-m
tmux new-window 
tmux send-keys 'cd ~/wk/alpha/proto4 && vim ajax.py' C-m
tmux -2 attach-session -d

}
