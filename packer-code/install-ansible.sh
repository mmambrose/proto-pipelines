#!/bin/bash

set -e

sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install ansible
