#!/bin/bash

set -e

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install ansible
