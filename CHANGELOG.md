# Docker Image Packaging for Apache

## YYYYMMDD.Y.Z - TBC

### Major Changes

  - Upgrade minimal Ansible community package support to 4.3.0

## 20210718.1.1 - 2021-07-18

### Major Changes

  - Upgrade minimal Ansible community package support to 4.2.0

## 20210602.1.1 - 2021-06-02

### Major Changes

  - Upgrade minimal Ansible support to 4.0.0

## 20210313.1.1 - 2021-03-13

### Major Changes

  - Bugfix [ansible-lint
    `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
  - Bugfix [ansible-lint
    `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
  - Bugfix [ansible-lint
    `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)
  - Change GIT tag as per Vagrant Box naming and versioning limitation

## 2.4.46-4alvistack8 - 2020-12-09

### Major Changes

  - Migrate from Travis CI to GitLab CI
  - Revamp with Packer

## 2.4.46-4alvistack5 - 2020-10-14

### Major Changes

  - Refine Molecule matrix

## 2.4.46-4alvistack1 - 2020-08-26

### Major Changes

  - Upgrade minimal Ansible Lint support to 4.3.2
  - Upgrade Travis CI test as Ubuntu Focal based
  - Upgrade minimal Ansible support to 2.10.0

## 2.4.41-4alvistack15 - 2020-06-10

### Major Changes

  - Revamp `create`, `side_effect`, `verify` and `destroy` logic
  - Replace `tini` with `catatonit`
  - Rename `post_tasks.yml` as `side_effect.yml`
  - Upgrade base image to Ubuntu 20.04

## 2.4.41-4alvistack4 - 2020-03-05

### Major Changes

  - Revamp with Molecule and `docker commit`
  - Consolidate molecule tests into `default` (noop)
  - Hotfix for systemd

## 2.4.41-3alvistack1 - 2020-01-15

### Major Changes

  - Replace `dumb-init` with `tini`, as like as `docker --init`
  - Include release specific vars and tasks
  - Revamp with `a2enmod` and `a2enconf`

## 2.4.41-2alvistack3 - 2019-11-05

### Major Changes

  - Upgrade minimal Ansible support to 2.9.0
  - Upgrade Travis CI test as Ubuntu Bionic based
  - Default with Python 3
  - Hotfix for en\_US.utf8 locale

## 2.4.41-1alvistack1 - 2019-10-12

### Major Changes

  - Revamp as Ansible based

## 2.4.39-0alvistack4 - 2019-05-20

### Major Changes

  - Bugfix "Build times out because no output was received"

## 2.4.39-0alvistack2 - 2019-04-16

### Major Changes

  - Improve checksum handling

## 2.4.38-0alvistack5 - 2019-03-18

### Major Changes

  - Revamp CMD as upstream image
  - Add some debug utils
  - Add checksum for curl

## 2.4.37-0alvistack1 - 2018-10-29

### Major Changes

  - Update dumb-init to v.1.2.2
  - Remove Debian style Apache configuration
  - Remove legacy default /usr/local/apache2/conf/extra/\*.conf
  - Implement required changes directly to
    /usr/local/apache2/conf/httpd.conf
  - Add more default enabled Apache modules

## 2.4.29-0alvistack1 - 2018-03-15

  - Running Apache with Docker
  - Official Apache docker image based
  - Handle ENTRYPOINT with dumb-init
  - Simulate Debian style Apache configuration
  - Change `User` and `Group` to `www-data`
  - Change `DocumentRoot` to `/var/www/html`
