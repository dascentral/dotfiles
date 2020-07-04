# Docker

## Introduction

Docker is a computer program that performs operating-system-level virtualization. It was first released in 2013 and is developed by Docker, Inc. Docker is used to run software packages called containers. [Wikipedia](https://en.wikipedia.org/wiki/Docker_(software))

## Command Cheat Sheet

The [Docker documentation](https://docs.docker.com/engine/reference/commandline/docker/) is comprehensive, searchable, and well designed. The commands listed below serve as my quick reference.

### Docker

#### Show running containers

```bash
docker ps
```

#### Show all containers

```bash
docker ps -a
```

### Docker: Run

*Note that the `run` command facilitates execution of a command within a NEW container. The `--rm` flag tells Docker to remove the conatiner after it exits.*

#### Start an interactive bash session within a new container

```bash
docker run --rm -it [IMAGE] bash
```

```bash
docker run --rm -it ubuntu:18.04 bash
```

#### Run a command within a new container

```bash
docker run --rm [IMAGE] [COMMAND]
```

```bash
docker run --rm php:7.2-apache-stretch php -v
```

### Docker: Stop

Stop one or more running containers.

```bash
docker stop [ID_or_NAME]
```

### Docker: Build

#### Build an image from a Dockerfile

```bash
docker build
```

### Docker: Exec

#### Execute a command within a running container

```bash
docker exec -it [ID_or_NAME] [COMMAND]
```

```bash
docker exec -it b2ae1fa197fd php -v
```

### Docker: Images

#### List all images

```bash
docker images
```

#### Search through images

```bash
docker images | grep php
```

#### Remove an image

```bash
docker rmi [ID]
```

### Docker: Volumes

#### View all volumes

```bash
docker volume ls
```

#### Remove local volumes that are not in use by at least one container

```bash
docker volume prune
```

### Docker Compose

Build images, start containers outlined within the `docker-compose.yml`, and run them in the background:

```bash
docker-compose up --build -d
```

Start containers outlined within the `docker-compose.yml` and run them in the background:

```bash
docker-compose up -d
```

Stop the containers defined in the `docker-compose.yml` file:

```bash
docker-compose stop
```

Stop and *remove* all containers defined in the `docker-compose.yml` file:

```bash
docker-compose down
```

Stop and *remove* all containers, including connected volumes, defined in the `docker-compose.yml` file:

```bash
docker-compose down -v
```

Start a bash session within the provided service:

```bash
docker-compose exec [service] bash
```

Follow logs within a running container:

```bash
docker-compose logs -f [service]
```

## Resoures

### Dockerfile

* **Article:** July 2019 - [Intro Guide to Dockerfile Best Practices](https://blog.docker.com/2019/07/intro-guide-to-dockerfile-best-practices/)

### Building Node.js Apps

* **Tutorial:** [Dockerizing a Node.js web app](https://nodejs.org/de/docs/guides/nodejs-docker-webapp/) - Nodejs.org
* **Tutorial:** [How To Build a Node.js Application with Docker](https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker) - Digital Ocean, Nov 2018
* **Tutorial:** [Using Docker for Node.js in Development and Production](https://dev.to/alex_barashkov/using-docker-for-nodejs-in-development-and-production-3cgp) - Jan 2019