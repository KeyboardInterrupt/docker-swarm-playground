#!/bin/bash

virtualenv venv -p python3
source venv/bin/activate
pip3 install git+https://github.com/ansible/ansible.git@devel
