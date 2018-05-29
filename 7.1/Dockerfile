FROM rockmagicnet/teamcity-agent-docker-compose:latest


# Installing PHP
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python-software-properties && \
    echo -n | add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    php7.1-cli php7.1-bz2 php7.1-soap php7.1-curl php7.1-mbstring php7.1-pdo \
    php7.1-gd php7.1-xml php7.1-zip zip && \
    apt-get purge -y python-software-properties && apt autoremove -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Installing composer
RUN curl --silent https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer | php -- --quiet && \
    mv composer.phar /usr/local/bin/composer
