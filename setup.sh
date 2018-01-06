#! /bin/bash

# Check for and install updates
sudo apt-get update
sudo apt-get -y upgrade

# Install Essentials
sudo apt-get update
sudo apt-get install -y vim git curl vlc
# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get install -f -y
rm -rf ./google-chrome*.deb
# Nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text
# Flux-gui
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install -y fluxgui

# InstallOptionals (ask for each, but in the beginning itself)
# Synapse - shortcut launcher
sudo apt-get install -y synapse
# Pip and Virtualenv( with Virtualenvwrapper)
# Konsole
sudo apt-get install -y konsole
# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Postgres (and required dependencies for using in flask apps)
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y python-psycopg2
sudo apt-get install -y libpq-dev
# Redis
# Neo4j
# Atom
# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

# oh-my-zsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 
shopt -s extglob
for rcfile in $HOME/.zprezto/runcoms/!(README.md); do
  ln -s "$rcfile" "$HOME/.$(basename $rcfile)"
done
# Is it possible to zsh from within bash and then configure prezto?
# zstyle ':prezto:load' pmodule \
#   'environment' \
#   'terminal' \
#   'editor' \
#   'history' \
#   'directory' \
#   'spectrum' \
#   'utility' \
#   'autosuggestions' \
#   'history-substring-search' \
#   'syntax-highlighting' \
#   'completion' \
#   'prompt' \
#   'git'



# Qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update && sudo apt install qbittorrent

#Ask which the user wants as the default shell?

# To-do list of things to be done manually...
# Like installing Package control in sublime so that it prompts you to do those one by one
# Sublime: Package control, Seti UI, Seti UX, Emmet, Themr, Schemr
# Generate new ssh keys, add github as a trusted host, then copy the ssh key into github settings
# Configure flux (Probably can be done via cli itself) p
