# syntax=docker/dockerfile:experimental
# get node image from docker hub. with verison 14.20
FROM node:14.20

# update base package for server
RUN apt-get update

# thiet lap thu muc dau nhac lenh la /app
WORKDIR /app

# copy cac file package json de chuan bij chay install cac dependency
# khi copy thi copy vao thu muc goc (hien tai la /app)
COPY package*.json ./

# chay install cac dependency
RUN npm install

# copy toan bo source con lai
COPY . .

# cong bo  ung dung se chay cong 3000
EXPOSE 3000

# chay lenh sh de run app khi container dc start
# CMD [ "node", "server.js" ]
# CMD [ "bash" ]

