# Dockerfile for building php.
#


FROM php

MAINTAINER Shawn <qiusct@gmail.com>


WORKDIR	/root/phpweb/

RUN	curl -o composer http://getcomposer.org/composer.phar	&& \
	chmod +x composer	&& \
	mv composer /bin/	&& \
	composer config -g repo.packagist composer https://packagist.phpcomposer.com	&& \
	apt-get update	&& \
	apt-get -y install git vim zip unzip	&& \
	rm -rf /var/lib/apt/lists/*

EXPOSE	8088

ENTRYPOINT	["php", "-S", "0.0.0.0:8088"]