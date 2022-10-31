FROM node:lts
ADD installAngular.sh /setup/
WORKDIR /setup/

RUN ["/bin/bash", "-c", "./installAngular.sh"]

