#!/usr/bin/env bash

sudo apt-get update -y

sudo apt-get dist-upgrade -y

sudo apt-get install curl git -y

curl -sSL https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash

cat > /etc/apt/preferences.d/pin-gitlab-runner.pref <<EOF
Explanation: Prefer GitLab provided packages over the Debian native ones
Package: gitlab-runner
Pin: origin packages.gitlab.com
Pin-Priority: 1001
EOF

sudo apt-get install gitlab-ci-multi-runner
