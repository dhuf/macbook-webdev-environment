#!/bin/bash

#
# Install Homebrew
#
cd ~/vhosts/

composer create-project typo3/neos-base-distribution:1.2.* neos12
composer create-project typo3/neos-base-distribution:2.0.* neos20
composer create-project typo3/neos-base-distribution:2.1.* neos21


composer create-project typo3/flow-base-distribution:2.* flow2
composer create-project typo3/flow-base-distribution:3.* flow3
