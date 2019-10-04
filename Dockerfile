FROM node:10
RUN npm install -g pouchdb-server
WORKDIR /app
CMD ./start.sh
COPY ./start.sh ./
COPY ./config.sh ./