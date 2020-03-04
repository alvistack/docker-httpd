# Docker Image Packaging for Apache HTTP Server

[![Travis](https://img.shields.io/travis/alvistack/docker-httpd.svg)](https://travis-ci.org/alvistack/docker-httpd)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-httpd.svg)](https://github.com/alvistack/docker-httpd/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-httpd.svg)](https://github.com/alvistack/docker-httpd/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/httpd.svg)](https://hub.docker.com/r/alvistack/httpd/)

The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.

Learn more about Apache: <https://httpd.apache.org/>

## Supported Tags and Respective `Dockerfile` Links

  - [`2.4`, `latest`](https://github.com/alvistack/docker-httpd/blob/master/molecule/2.4/Dockerfile.j2)

## Overview

This Docker container makes it easy to get an instance of Apache up and running.

Based on [Official Ubuntu Docker Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Minimized `Dockerfile` for meta data definition
  - Provision by Ansible and Molecule Docker driver in single layer
  - Handle `ENTRYPOINT` with [tini](https://github.com/krallin/tini)
  - Change `User` and `Group` to `www-data`
  - Change `DocumentRoot` to `/var/www/html`
  - Additional Apache modules:
      - actions
      - cache
      - cache\_disk
      - deflate
      - expires
      - logio
      - mime\_magic
      - negotiation
      - proxy
      - proxy\_fcgi
      - proxy\_http
      - remoteip
      - rewrite

### Quick Start

For the `VOLUME` directory that is used to store the repository data (amongst other things) we recommend mounting a host directory as a [data volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes), or via a named volume if using a docker version \>= 1.9.

Start Apache:

    # Pull latest image
    docker pull alvistack/httpd
    
    # Run as detach
    docker run \
        -itd \
        --name httpd \
        --publish 80:80 \
        --volume /var/www/html:/var/www/html \
        alvistack/httpd

**Success**. Apache is now available on port <http://localhost>.

## Versioning

The `latest` tag matches the most recent [GitHub Release](https://github.com/alvistack/docker-httpd/releases) of this repository. Thus using `alvistack/httpd:latest` or `alvistack/httpd` will ensure you are running the most up to date stable version of this image.

Other tags are rolling release rebuild by [Travis](https://travis-ci.org/alvistack/docker-httpd) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
