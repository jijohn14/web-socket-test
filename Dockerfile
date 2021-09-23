FROM node:alpine

LABEL maintainer="jijohn@microsoft.com"

RUN npm install -g ws

ENV NODE_PATH=/usr/local/lib/node_modules

ADD run.sh /run.sh
CMD ["/run.sh"]

EXPOSE 8010
