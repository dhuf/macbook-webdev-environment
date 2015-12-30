#!/bin/bash

export GOPATH="${HOME}/go"

#
# Install Homebrew
#
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown root /usr/local/bin/brew


#
# Install Ansible
#
sudo brew install ansible


#
# Prepare Ansible Playbooks
#
sudo ansible-galaxy install -r ansible-playbooks.requirements.txt --force


#
# Run Playbook
#
sudo ansible-playbook main.yml --skip-tags "instance" -i inventory -e "user=`whoami`"
