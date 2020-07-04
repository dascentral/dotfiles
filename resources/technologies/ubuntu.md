# Ubuntu

## Introduction

[Ubuntu](https://ubuntu.com/) is a free and open-source Linux distribution based on Debian. Ubuntu is officially released in three editions: Desktop, Server, and Core. All the editions can run on the computer alone, or in a virtual machine. Ubuntu is a popular operating system for cloud computing, with support for OpenStack. [Wikipedia](https://en.wikipedia.org/wiki/Ubuntu)

## Ubuntu Utils

I maintain a separate repository with some scripts that aid in the administration of Ubuntu servers.

[https://github.com/dascentral/ubuntu-utils](https://github.com/dascentral/ubuntu-utils)

Eventually, I hope to be running all of my apps in containers in the cloud. :) Until then, these scripts will remain relevant.

## Managing DNS - 14.04

I ran into an issue at work where I need to update the DNS name servers on a legacy VM. Here's how!

DNS name servers are stored in the following file:

```
/etc/network/interfaces
```

File contents typically look something like this:

```bash
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet static
address 10.3.XXX.XXX
netmask 255.255.255.0
gateway 10.3.XXX.XXX
dns-nameservers 10.3.XXX.XXX 10.15.XXX.XXX
```
