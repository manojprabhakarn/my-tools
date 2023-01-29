# Bug Bounty Recon Tool

This tool is designed to automate the recon process for bug bounty hunters. It performs various recon actions such as DNS enumeration, subdomain enumeration, and HTTP enumeration to identify potential targets for further testing.

## Prerequisites

- Install the following tools:
  - `dig` for DNS enumeration
  - `subfinder` for subdomain enumeration
  - `httprobe` for HTTP enumeration
  - `amass` for basic enumeration
  - `sublister` for subdomain enumeration
  - `gobuster` for bruteforce using all.txt
  
To install these tools, run the following commands:

`
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
# install gobuster
apt-get install gobuster
`

## Usage

To use the recon tool, run the following command:

`./recon.sh <target domain>`

