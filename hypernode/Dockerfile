FROM docker.hypernode.com/byteinternet/hypernode-docker:latest

RUN sed -i s/7.1/7.2/g /etc/my_init.d/60_restart_services.sh
RUN wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -
RUN echo "deb http://packages.blackfire.io/debian any main" | tee /etc/apt/sources.list.d/blackfire.list
RUN apt-get install blackfire-agent -y
RUN apt-get install blackfire-php -y
COPY 99_custom_services.sh  /etc/my_init.d/99_custom_services.sh
