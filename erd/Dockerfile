FROM ubuntu

LABEL title="erd" \
  author="José Juan Sánchez"

RUN apt-get update \
    && apt-get install -y git \
    && apt-get install -y python-pydot \
    && apt-get install -y python-pydot-ng \
    && apt-get install -y graphviz\
    && apt-get install -y curl\
    && curl -sSL https://get.haskellstack.org/ | sh\
    && cd / \
    && git clone https://github.com/BurntSushi/erd.git\
    && cd erd\
    && stack install

ENV PATH "$PATH:/root/.local/bin/"

#/root/.local/bin/erd -i simple.er -o simple.pdf