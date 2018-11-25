FROM ubuntu

LABEL title="soldat" \
  author="José Juan Sánchez"

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y libc6:i386 \
    && apt-get install -y libstdc++6:i386 \
    && apt-get install -y wget \
    && apt-get install -y gosu \
    && cd /tmp \
    && wget https://static.soldat.pl/downloads/soldatserver2.8.1_1.7.1.zip \
    && apt-get install -y unzip \
    && unzip soldatserver2.8.1_1.7.1.zip

RUN useradd soldat \
    && cd /tmp \
    && chown soldat:soldat * -R

EXPOSE 23073/tcp
EXPOSE 23073/udp
EXPOSE 23083/tcp

CMD ["gosu", "soldat", "/tmp/soldatserver"]