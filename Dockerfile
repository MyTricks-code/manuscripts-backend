FROM node:14-alpine

ENV PORT 1337
ENV NODE_ENV production

#create app
RUN wider -p /user/src/app
WORKDIR /usr/src/app

#install dep
COPY package.json /usr/src/app/
COPY yarn.lock /usr/src/app/

RUN yarn Install
COPY . /usr/src/app/

RUN yarn build
EXPOSE 1337

CMD ["yarn","start"]