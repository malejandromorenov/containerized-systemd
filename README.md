# Containerized Systemd

As someone who has developed some skill at using Systemd, I thought it pertinent to try to bring up containerized instances of Systemd. For example, bringing up a Systemd container that I can test some Ansible scripts against would be a great convenience.  This repo contains the attempts to build a containerized Systemd.

## Docker

Initial `./docker.sh` attempt was to try to run /lib/systemd directly, yieding:  
`Trying to run as user instance, but the system has not been booted with systemd.`

## Systemd-Nspawn

`./nspawn.sh` brings up a container named nspawn-systemd running ssh.

`machinectl poweroff nspawn-systemd` from outside turns the container off.

## Rkt

To do.
