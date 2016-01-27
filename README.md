# Containerized Systemd

As someone who has developed some skill at using Systemd, I thought it pertinent to try to bring up containerized instances of Systemd. For example, bringing up a Systemd container that I can test some Ansible scripts against would be a great convenience.  This repo contains the attempts to build a containerized Systemd.

## Docker

Initial `./docker.sh` attempt was to try to run /lib/systemd directly, yieding:  
`Trying to run as user instance, but the system has not been booted with systemd.`

http://serverfault.com/questions/607769/running-systemd-inside-a-docker-container-arch-linux indicates a number of people who seem to be doing better. I have not exhausted all the things there, but I have tried some:

I've tried adding --cap-add SYS_ADMIN --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro but I either get he above 'not been booted', or my host shuts itself down when I run this.

## Systemd-Nspawn

`./nspawn.sh` brings up a container named nspawn-systemd running ssh.

`machinectl poweroff nspawn-systemd` from outside turns the container off.

## Rkt

To do.
