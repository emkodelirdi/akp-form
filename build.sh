curl -o node.pkg  https://nodejs.org/dist/v18.18.2/node-v18.18.2.pkg
sudo installer -pkg /node.pkg -target /
npm install electron
npm install electron-builder
npm run dist
