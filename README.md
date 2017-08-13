# php-xdebug
Clean php images with xdebug included. When you don't need own php image, but want to debug.

## Usage

- set `xdebug.remote_host` to your internal ip. smth like 192.168.0.2
- if you use web debugging set `PHP_IDE_CONFIG="serverName=your_application"` to identify your application

## Examples

### Manual run cli

`docker run --rm antonmarin/php-xdebug:7.1-cli php -dxdebug.remote_host=192.168.100.5 -i`

or

`docker run --rm -e XDEBUG_CONFIG="remote_host=192.168.0.5" antonmarin/php-xdebug:7.1-cli php -i`

### docker-compose

```yaml
services:
  php:
    image: antonmarin/php-xdebug:7.1-fpm
    environment:
      XDEBUG_CONFIG: remote_host={{YOUR_IP_ADDRESS}}
      PHP_IDE_CONFIG: serverName={{YOUR_APPLICATION_NAME}}
```

### PhpStorm interpreter

- [Setup remote interpreter](https://www.jetbrains.com/help/phpstorm/2017.2/configuring-remote-php-interpreters.html#d37130e651)
- Add `xdebug.remote_host=192.168.0.5` in the Configuration options field
