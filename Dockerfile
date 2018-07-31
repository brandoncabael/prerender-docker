FROM node:8.11.3-stretch
LABEL maintainer "Brandon Cabael <brandon@bowtie.co>"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
RUN git clone https://github.com/prerender/prerender.git /usr/src/app/
RUN git checkout phantomjs
RUN npm install && npm cache clean --force
CMD [ "npm", "start" ]
EXPOSE 3000