#!/bin/sh

DIR=docker-systemd

docker build -t rektide/containerized-systemd "$DIR"
docker run rektide/containerized-systemd
