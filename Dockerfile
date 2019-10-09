FROM node:12-alpine
USER root
RUN apk add --no-cache curl nano tzdata
RUN npm install -g pouchdb-server --ignore-scripts
WORKDIR /app
CMD ./start.sh
COPY ./start.sh ./
# COPY ./config.sh ./