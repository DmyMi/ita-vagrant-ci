#!/usr/bin/env bash

sudo apt-get install build-essential dkms -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install openjdk-8-jdk-headless nodejs maven -y

sudo npm install -g @angular/cli

sudo npm install -g typescript

sudo npm install -g webpack

sudo apt-get autoclean -y

sudo apt-get autoremove -y
