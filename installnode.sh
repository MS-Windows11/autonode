#!/bin/bash

clear
echo "Check out xen.32x.me"
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y
clear
echo "Removing any existing Node.js installations..."
sudo apt remove -y nodejs

echo "Installing prerequisites..."
sudo apt install -y curl software-properties-common


echo "Installing Node.js and NPM..."
sudo apt install nodejs npm -y


echo "Verifying Node.js and NPM installation..."
node_version=$(node -v)
npm_version=$(npm -v)

if [[ $node_version && $npm_version ]]; then
    echo "Node.js version: $node_version"
    echo "NPM version: $npm_version"
    echo "Node.js and NPM have been successfully installed."
else
    echo "There was an error installing Node.js or NPM."
    exit 1
fi


echo "Upgrading NPM to the latest version..."
sudo npm install -g npm@latest

echo "NPM has been upgraded to: $(npm -v)"

echo "Installation and upgrade completed!"
