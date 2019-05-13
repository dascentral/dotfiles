# Docker

## Introduction

Docker is a computer program that performs operating-system-level virtualization. It was first released in 2013 and is developed by Docker, Inc. Docker is used to run software packages called containers. [Wikipedia](https://en.wikipedia.org/wiki/Docker_(software))

## Command Cheat Sheet

### Docker

Show running containers:

```bash
docker ps
```

Show all containers:

```bash
docker ps -a
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

Starts a container based upon the custom image defined in the local `Dockerfile`:

```bash
docker-composer up --build
```

Stops the containers defined in the `docker-composer.yml` file:

```bash
docker-composer stop
```

Stops and removes all containers defined in the `docker-composer.yml` file:

```bash
docker-composer down
```

Start a bash session within the provided service:

```bash
docker-compose exec [service] bash
```
