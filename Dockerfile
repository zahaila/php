FROM zaioll/debian:stretch

LABEL maintener 'Láyro Chrystofer <zaioll@protonmail.com>'

ENV php_version=7.2
ENV usuario developer
ENV HOME "/home/${usuario}"

COPY install /install/
RUN /install/_install.sh

COPY configure /configure/
RUN /configure/_run.sh

COPY start /run/php/

STOPSIGNAL SIGTERM
CMD ["/bin/bash", "/run/php/start"]