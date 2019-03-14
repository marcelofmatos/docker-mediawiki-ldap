FROM kristophjunge/mediawiki:1.27 

RUN apt-get update \
    && apt-get -y install libldb-dev libldap2-dev \
    && apt-get autoclean \
    && ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/libldap.so \
    && ln -s /usr/lib/x86_64-linux-gnu/liblber.so /usr/lib/liblber.so \
    && docker-php-ext-install ldap

