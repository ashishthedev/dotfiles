alias q='exit'
alias re='source ~/.bash_aliases'
alias al='gvim ~/.bash_aliases'
alias ..='cd ..'
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
alias ls='ls -alt'
alias sshaw='setTitle ssh-Adaptwater; ssh adaptwater.com.au'
alias sshes='setTitle ssh-Elevation; ssh ashishthedev@elevation.adaptinfrastructure.com; ssh-Elevation'
alias sshhs='setTitle ssh-Hazard; ssh hazard.adaptwater.com.au'
alias useCredentialHelper='git config credential.helper store'
alias eelevation='gvim scp://ashishthedev@elevation.adaptinfrastructure.com//home/ashishthedev/elevation/elevation.py'
alias gcloudDeploy='date && gcloud preview app deploy app.yaml --promote && date'
alias gcloudDeployNoPromote='date && gcloud preview app deploy app.yaml && date'

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

otaxbotTabs(){
gnome-terminal \
--tab -t "tbGAEServer" -e "./ubuntu_gae_server_port_6000.sh"    --working-directory="/home/atd/wk/taxbot/bin" \
--tab -t "tbFrontEnd"    -e "bash"                                --working-directory="/home/atd/wk/taxbot/" 
google-chrome http://localhost:6000/
exit
}

oclrTabs(){
gnome-terminal \
--tab -t "clrFrontEnd"     -e "bash"                                --working-directory="/home/atd/wk/clrFrontEnd" \
--tab -t "GAE clrFrontEnd" -e "./ubuntu_gae_server_port_5000.sh"    --working-directory="/home/atd/wk/clrFrontEnd/bin" \
--tab -t "vus"             -e "bash -c 'vagrant up && vagrant ssh'" --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango1"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
--tab -t "clrDjango2"      -e "bash"                                --working-directory="/home/atd/wk/climaterealty" \
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

installSolarized(){
sudo apt-get install -y wget unzip curl
cd
wget http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
mkdir -p ~/.vim/colors/
mv solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
}

