FROM php:alpine

MAINTAINER Shawn <qiusct@gmail.com>


WORKDIR	/root/phpweb/

RUN	curl -o composer http://getcomposer.org/composer.phar	&& \
	chmod +x composer	&& \
	mv composer /bin/	&& \
	composer config -g repo.packagist composer https://packagist.phpcomposer.com	&& \
	apk add --no-cache git vim zip unzip

EXPOSE	8088

ENTRYPOINT	["php", "-S", "0.0.0.0:8088"]