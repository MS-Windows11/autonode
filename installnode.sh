#!/bin/bash

echo "xen.32x.me"
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

echo "xen.32x.me"
echo "Removing any existing Node.js installations..."
sudo apt remove -y nodejs
echo "xen.32x.me"
echo "Installing prerequisites..."
sudo apt install -y curl software-properties-common

echo "xen.32x.me"
echo "Adding Node.js repository..."
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -

echo "xen.32x.me"
echo "Installing Node.js and NPM..."
sudo apt install -y nodejs

echo "xen.32x.me"
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
