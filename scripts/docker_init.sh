#!/usr/bin/env bash

curl -sSL https://get.docker.com/ | sudo sh

sudo usermod -aG docker gitlab-runner

sudo apt-get autoclean -y

sudo apt-get autoremove -y
