FROM node:14
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./ /usr/src/app/
RUN yarn && yarn build
EXPOSE 1337
CMD [ "yarn", "start" ]
