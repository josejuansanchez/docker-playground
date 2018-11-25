FROM ubuntu

LABEL title="cmatrix" \
  author="José Juan Sánchez"

RUN apt-get update \
    && apt-get install -y --no-install-recommends cmatrix

RUN echo "#!/bin/sh" > /helloworld.sh \
    && echo "echo \"Hola mundo\"" >> /helloworld.sh \
    && echo "exec /usr/bin/cmatrix" >> /helloworld.sh \
    && chmod +x /helloworld.sh

#CMD ["/usr/bin/cmatrix"]
CMD ["/bin/sh", "-c", "./helloworld.sh"]