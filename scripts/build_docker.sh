#!/usr/bin/env bash

gitlab-ci-multi-runner register -n --name "ITA Container" --registration-token $1 --url https://gitlab.com/ci --executor shell --tag-list academy,container

gitlab-ci-multi-runner register -n --name "ITA Docker Executor" --registration-token $1 --url https://gitlab.com/ci --executor docker --docker-image "docker:latest" --docker-privileged --tag-list academy,docker
