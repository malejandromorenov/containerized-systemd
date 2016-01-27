#!/bin/sh

DIR=docker-systemd

docker build -t rektide/containerized-systemd "$DIR"
docker run --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro rektide/containerized-systemd
