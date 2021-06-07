#!/bin/sh

xargs -a .init-packages.txt sudo apt-get install -yq
xargs -a .keys.txt curl -fsSL | sudo apt-key add -
xargs -a .add-repo.txt sudo add-apt-repository -y
sudo apt update -yq
xargs -a .packages.txt sudo apt install -yq
