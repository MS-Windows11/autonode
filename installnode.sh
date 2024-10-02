#!/bin/bash

clear
echo "Check out xen.32x.me"
echo "Verifying Node.js and NPM installation..."
node_version=$(node -v)
npm_version=$(npm -v)

if [[ $node_version="v12.22.9" && $npm_version="8.5.1" ]]; then
    echo "Upgrade to latest version"
    echo "wakeup"
    nvm install 22.9.0
else
    echo "There was an error installing Node.js or NPM."
    exit 1
fi

clear
echo "Check out xen.32x.me"
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

clear

echo "Installing prerequisites..."
sudo apt install -y curl software-properties-common


echo "Installing Node.js and NPM"
sudo apt install nodejs npm -y



clear

echo "Upgrading NodeJS and NPM"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
echo "You need to create a new terminal/login again to install the latest nodejs version"

