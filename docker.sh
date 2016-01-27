#!/bin/sh

DIR=docker-systemd

docker build -t rektide/containerized-systemd "$DIR"
docker run --detach --interactive --privileged --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro rektide/containerized-systemd /lib/systemd/systemd --system
