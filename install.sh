#!/bin/bash

# Update and install dependencies
sudo apt update
sudo apt full-upgrade -y
sudo apt install -y nodejs npm ffmpeg
sudo apt install libsndfile1-dev

# Install Node.js dependencies
cd /home/$USER/PiFmRds-WebApp
npm install express body-parser multer

# Clone PiFmRds Repository
git clone https://github.com/ChristopheJacquet/PiFmRds.git

# Build PiFmRds
cd PiFmRds/src
make clean
make

echo "================================="
echo "Installation complete!"
echo "To start the web application, run:"
echo "node server.js"
echo "================================="
echo "                         "
echo "   __            _       "
echo "  / _|          (_)      "
echo " | |_ _   _ _ __ _  ___  "
echo " |  _| | | | '__| |/ _ \ "
echo " | | | |_| | |  | | (_) |"
echo " |_|  \__,_|_|  |_|\___/ "
echo "                         "
echo "                         "
