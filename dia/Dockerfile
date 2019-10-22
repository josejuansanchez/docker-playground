FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

VOLUME /diagramas

RUN apt-get update && \
    apt-get install -y dia && \
    apt-get install -y unzip

COPY EER.zip /usr/share/dia/
RUN cd /usr/share/dia && \
    unzip EER.zip

CMD ["dia"]