#!/usr/bin/env bash

sudo apt-get update -y

sudo apt-get dist-upgrade -y

sudo apt-get install curl git -y

curl -sSL https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash

sudo apt-get install gitlab-ci-multi-runner
