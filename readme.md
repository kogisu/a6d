# Ansibled

Ansible in docker.

## About

This project deploys a docker network with 3 ubuntu - based docker inside a docker container (dind)

Each of the nodes in the container are ssh-enabled which allows developers to create ansible scripts and test locally. This script creates a full dev environment for ansible in under a minute.

### Controller Node

Controller is running `alpine linux` and comes preloaded with `docker` and `ansible`

### Worker Nodes

Nodes are running `Ubuntu 20.04`

## Architecture

![Architecture diagram](./diagrams/diagram.svg)

## Requirements

docker

## Setup

To set up the environment, run the following:

```sh
$ make
# yep... that's it!!
```

To bring down the network, run

```
make dind_down
```

## IP addresses

docker creates an IP for each docker container in the network. To determine the IP addresses for each of the containers running on your machine, run for each container

```sh
$ docker inspect <docker-container-hash>
```

Under the `Networks` section, look for the `IPAddress`

```json
"Networks": {
  "bridge": {
    ...
    "IPAddress": "172.17.0.4",
    ...
  }
}
```
