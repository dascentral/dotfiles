# Docker

## Introduction

Docker is a computer program that performs operating-system-level virtualization. It was first released in 2013 and is developed by Docker, Inc. Docker is used to run software packages called containers. [Wikipedia](https://en.wikipedia.org/wiki/Docker_(software))

## Command Cheat Sheet

The [Docker documentation](https://docs.docker.com/engine/reference/commandline/docker/) is quite comprehensive and well designed, however I have attempted to inventory my most requently used commands below for quick reference.

### Docker

Show running containers:

```bash
docker ps
```

Show all containers:

```bash
docker ps -a
```

### Docker: Run

*Note that the `run` command facilitates execution of a command within a NEW container.*

Run a command within a *new* container:

```bash
docker run [IMAGE] [COMMAND]
```

```bash
docker run php:7.2-apache-stretch php -v
```

Run a command within a *new*, named container:

```bash
docker run --name=[NAME] [IMAGE] [COMMAND]
```

```bash
docker run --name=PHP72 php:7.2-apache-stretch php -v
```

### Docker: Exec

Execute a command within a running container:

```bash
docker exec -it [ID_or_NAME] [COMMAND]
```

```bash
docker exec -it b2ae1fa197fd php -v
```

### Docker: Images

List all images:

```bash
docker images
```

Search through images:

```bash
docker images | grep php
```

Remove an image:

```bash
docker rmi [ID]
```

### Docker Compose

Start containers outlined within the `docker-composer.yml` and run them in the background:

```bash
docker-composer up --build -d
```

Stop the containers defined in the `docker-composer.yml` file:

```bash
docker-composer stop
```

Stop and *remove* all containers defined in the `docker-composer.yml` file:

```bash
docker-composer down
```

Start a bash session within the provided service:

```bash
docker-compose exec [service] bash
```
