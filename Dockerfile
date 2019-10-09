FROM node:12
USER root
RUN apt update && apt install -y curl nano tzdata make python sqlite
RUN npm_config_user=root npm install -g pouchdb-server
WORKDIR /app
CMD ./start.sh
COPY ./start.sh ./
# COPY ./config.sh ./