# Docker Swarm Playground

This Repository can be used to quickly spin up a local 3 Node Docker Swarm.

## Requirements & Dependencies

**Vagrant** is used to spin up the virtual Machines in **VirtualBox** that make up the Swarm. the Vagrant-**Ansible** provisioner + **Ansible** is used for Docker installation.

- [Vagrant](https://www.vagrantup.com/) Version 2.0.2 or higher
- [Ansible](https://www.ansible.com/) Version 2.7 or higher
- [VirtualBox](https://www.virtualbox.org/) Version 5.1.38 or higher

> Note: This is only tested on Linux, it might not work on Windows, but there is a probabillity that it will work.

## Initialization

To spin up the Docker Swarm Playground run the `bootstrap.sh` inside the `./ansible/` directory.

**bootstrap.sh**:
```bash
#!/bin/bash

ansible-galaxy install -r requirements.yml -p roles
vagrant up
```

This will bring up three Ubuntu 18.04 VirtualBox Machines named: `docker01`, `docker02` and `docker03` which form a Docker Swarm with `docker01` being the initial Manager Node.

## Usage

To play around with the Swarm and deploy services just connect to the Manager Node via `vagrant ssh docker01`

Or you can i.E. use ansible to spin up Portainer, managing your swarm. to do so run `ansible-playbook -i inventories/vagrant/hosts portainer.yml` inside the `./ansible/` directory.

After that, and after waiting for a short while, you should be able to access Portainer on any Nodes IP address on Port 9000 (i.E. [http://192.168.29.11:9000](http://192.168.29.11:9000)) via your web browser.
