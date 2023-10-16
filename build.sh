#!/bin/bash

# curl -o node.pkg  https://nodejs.org/dist/v18.18.2/node-v18.18.2.pkg
if type node > /dev/null 2>&1 && which node > /dev/null 2>&1 ;then
    node -v
    echo "node is installed, skipping..."
else
    echo "installing node"
    curl -o node.pkg  https://nodejs.org/dist/v18.18.2/node-v18.18.2.pkg
    sudo installer -pkg /node.pkg -target /
fi
# sudo installer -pkg /node.pkg -target /
npm install electron
npm install electron-builder
npm run dist
