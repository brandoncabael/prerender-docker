FROM node:8.11.3-stretch
LABEL maintainer "Brandon Cabael <brandon@bowtie.co>"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install && npm cache clean --force
COPY . /usr/src/app
CMD [ "npm", "start" ]
EXPOSE 3000