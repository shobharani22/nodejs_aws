FROM node:16
WORKDIR user/app
COPY package.json /user/app
RUN npm install
COPY . /user/app
CMD ["npm" ,"start"]
EXPOSE 8088