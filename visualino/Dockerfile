FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Madrid

RUN apt-get update \
    && apt-get install -y wget \
    && wget http://www.visualino.net/downloads/ubuntu/visualino_0.7_amd64.deb \
    && apt-get install -y libqt5core5a libqt5gui5 libqt5serialport5 libqt5webkit5 libqt5widgets5 libqt5network5 \
    && dpkg -i visualino_0.7_amd64.deb \
    && apt-get install -y gosu

RUN useradd visualino

CMD [ "gosu", "visualino", "visualino" ]