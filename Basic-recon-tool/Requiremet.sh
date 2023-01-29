# amass
snap install amass

# Install dig
sudo apt-get install dnsutils

# Install subfinder
go get -v github.com/projectdiscovery/subfinder/cmd/subfinder

# Install httprobe
go get -u github.com/tomnomnom/httprobe

# install sublister
git clone https://github.com/aboul3la/Sublist3r.git
sudo mv Sublist3r/ /opt/
cd /opt/Sublist3r/
pip install -r requirements.txt
touch sublist3r

##!/bin/bash#python 
/opt/Sublist3r/sublist3r.py $*

Move sublist3r file to /usr/bin
chmod +x sublist3r