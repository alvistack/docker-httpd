# Docker Image Packaging for Apache HTTP Server

[![GitLab pipeline
status](https://img.shields.io/gitlab/pipeline/alvistack/docker-httpd/master)](https://gitlab.com/alvistack/docker-httpd/-/pipelines)
[![GitHub
release](https://img.shields.io/github/release/alvistack/docker-httpd.svg)](https://github.com/alvistack/docker-httpd/releases)
[![GitHub
license](https://img.shields.io/github/license/alvistack/docker-httpd.svg)](https://github.com/alvistack/docker-httpd/blob/master/LICENSE)
[![Docker
Pulls](https://img.shields.io/docker/pulls/alvistack/httpd-2.4.svg)](https://hub.docker.com/r/alvistack/httpd-2.4/)

The Apache HTTP Server Project is an effort to develop and maintain an
open-source HTTP server for modern operating systems including UNIX and
Windows. The goal of this project is to provide a secure, efficient and
extensible server that provides HTTP services in sync with the current
HTTP standards.

Learn more about Apache: <https://httpd.apache.org/>

## Supported Tags and Respective Packer Template Links

  - [`alvistack/httpd-2.4`](https://hub.docker.com/r/alvistack/httpd-2.4)
      - [`packer/docker-2.4/packer.json`](https://github.com/alvistack/docker-httpd/blob/master/packer/docker-2.4/packer.json)

## Overview

This Docker container makes it easy to get an instance of Apache up and
running.

Based on [Official Ubuntu Docker
Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Packaging by Packer Docker builder and Ansible provisioner in single
    layer
  - Handle `ENTRYPOINT` with
    [catatonit](https://github.com/openSUSE/catatonit)
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

For the `VOLUME` directory that is used to store the repository data
(amongst other things) we recommend mounting a host directory as a [data
volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes),
or via a named volume if using a docker version \>= 1.9.

Start Apache:

    # Pull latest image
    docker pull alvistack/httpd-2.4
    
    # Run as detach
    docker run \
        -itd \
        --name httpd \
        --publish 80:80 \
        --volume /var/www/html:/var/www/html \
        alvistack/httpd-2.4

**Success**. Apache is now available on port <http://localhost>.

## Versioning

### `YYYYMMDD.Y.Z`

Release tags could be find from [GitHub
Release](https://github.com/alvistack/docker-httpd/releases) of this
repository. Thus using these tags will ensure you are running the most
up to date stable version of this image.

### `YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab
pipeline](https://gitlab.com/alvistack/docker-httpd/-/pipelines) in
weekly basis. Thus using these tags will ensure you are running the
latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC
    BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
