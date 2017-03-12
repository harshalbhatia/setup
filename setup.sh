#! /bin/bash

# Check for and install updates
sudo apt-get update
sudo apt-get -y upgrade

# Install Essentials
sudo apt-get update
# Vim
sudo apt-get install -y vim
# Git
sudo apt-get install -y git
# Curl
sudo apt-get install -y curl
# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get install -f -y
# Npm and node
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm nodesource_setup.sh
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
# Sublime
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
# Flux-gui
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install -y fluxgui
# VLC
sudo apt-get install -y vlc


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

# zsh and prezto
sudo apt-get install -y zsh
# Is it possible to install zsh, then switch to zsh from within bash and then install prezto?

#Ask which the user wants as the default shell?

# To-do list of things to be done manually...
# Like installing Package control in sublime so that it prompts you to do those one by one
# Sublime: Package control, Seti UI, Seti UX, Emmet, Themr, Schemr
# Generate new ssh keys, add github as a trusted host, then copy the ssh key into github settings
# Configure flux (Probably can be done via cli itself) p
