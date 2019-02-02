#!/bin/bash

ansible-galaxy install -r requirements.yml -p roles
vagrant up
ln -s ../../.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory inventories/vagrant/hosts
