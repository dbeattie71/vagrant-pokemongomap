# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.provision :shell, path: 'install_packages.sh', keep_color: true, privileged: true
  config.vm.provision :shell, privileged: false, keep_color: true, inline:
<<SCRIPT
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 5.0
nvm use 5.0
nvm alias default node

cd ~
git clone https://github.com/PokemonGoMap/PokemonGo-Map.git
cd ~/PokemonGo-Map
sudo -H pip install -r requirements.txt
npm install
npm run build
SCRIPT

end