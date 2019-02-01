#!/bin/bash

ansible-galaxy install -r requirements.yml -p roles
vagrant up
