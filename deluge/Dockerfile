FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install deluged deluge-web deluge-console -y

COPY /upload/.config /root/.config
COPY /upload/start.sh /start.sh

RUN echo "pippo:ciao:10" >> ~/.config/deluge/auth

WORKDIR /

CMD ["/start.sh"]
