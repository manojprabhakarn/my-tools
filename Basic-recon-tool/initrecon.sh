#! /usr/bin/bash

# Check if target domain is provided
if [ -z "$1" ]; then
  echo "Usage: recon.sh <target domain>"
  exit 1
fi

# Set target domain
target=$1

# Perform DNS enumeration
echo "Performing DNS enumeration for $target..."
dig axfr $target @1.1.1.1

# Perform subdomain enumeration
echo "Performing subdomain enumeration for $target..."
subfinder -d $target

# Perform HTTP enumeration
echo "Performing HTTP enumeration for $target..."
httprobe -p 80,443 -c 50 $target


echo "[*] Basic Enumeration...."
# Basic Subdomain Enumeration
amass enum -d $target -o amsubenum.txt
# DNS Enumeration
amass enum -v -src -ip -brute -min-for-recursive 2 -d $target

echo '[*]Gathering sudomains with sublister...'
sublist3r -d $target

echo '[*]Gathering Subdomain using Bruteforce....'
gobuster dir -u $target -w /wordlist/all.txt