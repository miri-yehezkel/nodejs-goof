# FROM node:6-stretch
FROM node:14.18.2

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install
RUN npm -v
EXPOSE 3001
EXPOSE 9228
ENTRYPOINT ["npm", "start"]
