#! /bin/bash

# Check for and install updates
sudo apt-get update
sudo apt-get -y upgrade
# Install Essentials
sudo apt-get update
sudo apt-get install -y vim git curl vlc build-essential
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
# Redshift
sudo apt-get install -y redshift redshift-gtk

# Synapse - shortcut launcher
sudo apt-get install -y synapse
# Konsole
sudo apt-get install -y konsole
# Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install -y atom
# VS Code                                                                                                                     
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg                                        
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg                                                                    
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'                                                                                                                          
sudo apt-get update                                                                                                           
sudo apt-get install -y code                                                                                                  
                                                                                                                              
# oh-my-zsh                                                                                                                   
sudo apt-get install -y zsh                                                                                                   
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"                        
 
# Qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install -y qbittorrent

# To-do list of things to be done manually...
# Like installing Package control in sublime so that it prompts you to do those one by one
# Sublime: Package control, Seti UI, Seti UX, Emmet, Themr, Schemr
# Generate new ssh keys, add github as a trusted host, then copy the ssh key into github settings
# Configure flux (Probably can be done via cli itself)
