FROM rockmagicnet/teamcity-agent-docker-compose:latest


# Installing PHP
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    php-cli php-bz2 php-soap php-curl php-mbstring php-pdo \
    php-gd php-xml php-zip zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Installing composer
RUN curl --silent https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer | php -- --quiet && \
    mv composer.phar /usr/local/bin/composer
