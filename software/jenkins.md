# Jenkins

## Introduction

[Jenkins](https://jenkins.io/) is a free and open source automation server written in Java. Jenkins helps to automate the non-human part of the software development process, with continuous integration and facilitating technical aspects of continuous delivery. [Wikipedia](https://en.wikipedia.org/wiki/Jenkins_(software))

## Ubuntu

I personally run Jenkins exclusively on Ubuntu-based Linux servers. All information below is for that platform.

## Starting/Stopping/Restarting via CLI

```bash
sudo service jenkins restart
```

```bash
sudo service jenkins stop
```

```bash
sudo service jenkins start
```

## Security

### Disabling Security

The other day, our work Jenkins installation lost the ability to connect to our Active Directory instance. I found the following instructions for temporarily turning off security.

[https://jenkins.io/doc/book/system-administration/security/](https://jenkins.io/doc/book/system-administration/security/)