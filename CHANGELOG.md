# Docker Image Packaging for Apache

## 2.4.39-0alvistackx - TBC

### Major Changes

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
  - Implement required changes directly to /usr/local/apache2/conf/httpd.conf
  - Add more default enabled Apache modules

## 2.4.29-0alvistack1 - 2018-03-15

  - Running Apache with Docker
  - Official Apache docker image based
  - Handle ENTRYPOINT with dumb-init
  - Simulate Debian style Apache configuration
  - Change `User` and `Group` to `www-data`
  - Change `DocumentRoot` to `/var/www/html`
