FROM jenkins
EXPOSE 8080
USER root

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash && \
    apt-get install -fy nodejs && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN curl -o- -L https://yarnpkg.com/install.sh  | bash
