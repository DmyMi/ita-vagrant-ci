#!/usr/bin/env bash

gitlab-ci-multi-runner register -n --name "ITA Container" --registration-token $1 --url https://gitlab.com/ci --executor shell --tag-list academy,container
