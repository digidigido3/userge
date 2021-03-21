#! /bin/bash
sudo apt install tree wget2 p7zip-full jq ffmpeg wget git
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
wget https://repo.juicedama.workers.dev/Userge/Userge-Bot.zip
unzip ./Userge-Bot.zip
mv ./Userge /app
sudo apt install python3.8
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.8 get-pip.py
pip3.8 install -r requirements.txt
