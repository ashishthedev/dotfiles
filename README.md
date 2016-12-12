How to use:
Add the files without dot extension in this directory(~/dotfiles) for ex/- instead of adding ```.bashrc``` you will add ```bashrc```(without dot)

Add the file to the following list in the shell script.
files="bash_profile bashrc vimrc bash_aliases jshintrc tmux.conf"    # list of files/folders to symlink in homedir
Run makesymlinks.sh
Now any old files will be moved to ~/dotfiles_old and a link will be placed in home folder
Thats it. The file is now present in your repo.
