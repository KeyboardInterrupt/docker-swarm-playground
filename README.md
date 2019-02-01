# Docker Swarm Playground

This Repository can be used to quickly spin up a local 3 Node Docker Swarm.

## Requirements & Dependencies

**Vagrant** is used to spin up the virtual Machines that make up the Swarm. the Vagrant-**Ansible** provisioner + **Ansible** is used for Docker installation.

- [Vagrant](https://www.vagrantup.com/) Version 2.0.2 or greater
- [Ansible](https://www.ansible.com/) Version 2.7 or greater

> Note: This is only tested on Linux, it might not work on Windows, but there is a probabillity that it will work.

## Usage

To spin up the Docker Swarm Playground run the `bootstrap.sh` inside the `./ansible/` directory.

**bootstrap.sh**:
```bash
#!/bin/bash

ansible-galaxy install -r requirements.yml -p roles
vagrant up
```
