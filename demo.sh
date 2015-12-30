#!/bin/bash

#
# Install Homebrew
#
cd ~/vhosts/

#composer create-project typo3/neos-base-distribution:1.2.* neos12
sudo ansible-playbook /Users/jonas/sinso-macbook-webdev-environment/create_instance.yml --skip-tags "setup" -i /Users/jonas/sinso-macbook-webdev-environment/inventory -e "user=`whoami` name=neos12 application=neos_1 phpversion=5.5"

#composer create-project typo3/neos-base-distribution:2.0.* neos20
sudo ansible-playbook /Users/jonas/sinso-macbook-webdev-environment/create_instance.yml --skip-tags "setup" -i /Users/jonas/sinso-macbook-webdev-environment/inventory -e "user=`whoami` name=neos20 application=neos_1 phpversion=5.6"

#composer create-project typo3/neos-base-distribution:2.1.* neos21
sudo ansible-playbook /Users/jonas/sinso-macbook-webdev-environment/create_instance.yml --skip-tags "setup" -i /Users/jonas/sinso-macbook-webdev-environment/inventory -e "user=`whoami` name=neos21 application=neos_2 phpversion=7.0"


#composer create-project typo3/flow-base-distribution:2.* flow2
sudo ansible-playbook /Users/jonas/sinso-macbook-webdev-environment/create_instance.yml --skip-tags "setup" -i /Users/jonas/sinso-macbook-webdev-environment/inventory -e "user=`whoami` name=flow2 application=flow_2 phpversion=5.5"

#composer create-project typo3/flow-base-distribution:3.* flow3
sudo ansible-playbook /Users/jonas/sinso-macbook-webdev-environment/create_instance.yml --skip-tags "setup" -i /Users/jonas/sinso-macbook-webdev-environment/inventory -e "user=`whoami` name=flow3 application=flow_3 phpversion=7.0"
