# Ubuntu Server based workstation

This directory contains the required artifacts to setup a Ubuntu Server Xenial (16.04 LTS) x64 based workstation.

## Pre-requisites

- [Vagrant](https://www.vagrantup.com)
- [VirtualBox](https://www.virtualbox.org)

## Transient VM for dev/test use

Navigate to this directory and execute `vagrant up`. This will spin up a VirtualBox VM using the official Ubuntu Xenial64 image retrieved from HashiCorp. Additional software and additional configuration as follows will also be installed on the VM.

### Software from Ubuntu's repositories

- OpenSSH Server
- XFCE4
- LightDM w/ GTK Greeter
- Gnome Terminal
- Firefox
- Git
- Docker
- Golang
- Expect

### Third Party Software

- [Google Chrome](https://www.google.com/chrome)
- [Visual Studio Code](https://code.visualstudio.com)
- [CrashPlan](https://www.crashplan.com)

### Configuration

- inotify max user watches set to 2,097,152

## Default Configuration

### Username and Password

The base image is setup with the user `ubuntu` and password `password`.

### SSH Keys

Vagrant generates and embeds keys that allow the user to execute `vagrant ssh` to open a terminal to the deployed VM. These keys are located in `/home/ubuntu/.ssh`.

### Sudo Access

The `ubuntu` user is allowed to elevate to `root` privileges using the `sudo` command with a password.

## Modifying Configuration

### Create User

### Give Sudo Access

### Delete Default User

Existing SSH keys are deleted when the default user's home directory is deleted.

## Additional Configuration

The configured operating environment is installed with [CrashPlan](https://www.crashplan.com), which is a backup software that allows you to backup to a local folder, external hard drive, cloud (paid) or a backup server (also running CrashPlan). All backups are encrypted before being transmitted over the wire. With options that range from local, over the network to cloud backups, this is a reasonable choice for backups for users that wish to offload this task. You'll need to [configure the installed CrashPlan instance](https://support.crashplan.com/Getting_Started).
