#!/bin/bash

playbookDirname="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"
ansiblePlaybookOptions="${playbookDirname}create_instance.yml --tags instance -i ${playbookDirname}inventory"

cd ~/vhosts/

#
# TYPO3 Neos
#
composer create-project typo3/neos-base-distribution:1.2.* neos12
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=neos12 application=neos_1 phpversion=5.5"

composer create-project typo3/neos-base-distribution:2.0.* neos20
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=neos20 application=neos_1 phpversion=5.6"

composer create-project typo3/neos-base-distribution:2.1.* neos21
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=neos21 application=neos_2 phpversion=7.0"


#
# TYPO3 Flow
#
composer create-project typo3/flow-base-distribution:2.* flow2
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=flow2 application=flow_2 phpversion=5.5"

composer create-project typo3/flow-base-distribution:3.* flow3
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=flow3 application=flow_3 phpversion=7.0"


#
# TYPO3 CMS
#
composer create-project typo3/cms-base-distribution:6.2.* typo3sixtwo --keep-vcs
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=typo3sixtwo application=typo3_6 phpversion=5.6"

composer create-project typo3/cms-base-distribution:7.* typo3seven --keep-vcs
sudo ansible-playbook ${ansiblePlaybookOptions} -e "user=`whoami` name=typo3seven application=typo3_7 phpversion=7.0"

