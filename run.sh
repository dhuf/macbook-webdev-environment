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
# Install python (to avoid conflict between default vs. homebrew python)
#
sudo brew install python

#
# Hotfix https://github.com/ansible/ansible-modules-core/issues/2537
#
sudo curl -o /usr/local/Cellar/ansible/1.9.4_1/libexec/lib/python2.7/site-packages/ansible/modules/core/system/user.py https://raw.githubusercontent.com/confirm/ansible-modules-core/e7a5deccf3c3b905583284f278de19fe71a03b82/system/user.py

#
# Run Playbook
#
sudo ansible-playbook main.yml --skip-tags "instance" -i inventory -e "user=`whoami`"
