FROM node:16.13.1

ENV HOME=/home/app

COPY package.json package-lock.json $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install

COPY . $HOME/node_docker

CMD ["npm", "start"]
