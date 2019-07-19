# Docker

## Introduction

Docker is a set of coupled software-as-a-service and platform-as-a-service products that use operating-system-level virtualization to develop and deliver software in packages called containers. The software that hosts the containers is called Docker Engine. It was first started in 2013 and is developed by Docker, Inc. [Wikipedia](https://en.wikipedia.org/wiki/Docker_(software))

## Installation

You have the following installation options:

1. Direct from the software developer: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
1. Via [Homebrew](https://brew.sh):

```bash
brew cask install docker
```

### Confirming Installation

Once you have opened the Docker app and logged in, Docker should get itself going on its own.

You can validate installation via the following:

```bash
docker --version
docker-machine --version
docker-compose --version
```
