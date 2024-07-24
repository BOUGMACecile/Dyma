#FROM node:alpine
#WORKDIR /app
#COPY . .
#RUN npm install -g nodemon && npm install
#ENV PATH=$PATH:/app/node_modules/.bin
#CMD [ "nodemon", "/app/app.js" ]
#FROM node:alpine
#WORKDIR /app
#COPY . .
#RUN npm install
#CMD [ "npm", "start" ]
FROM node:alpine
WORKDIR /app
COPY ./package.json .
RUN npm install
COPY . .
ENV PATH=$PATH:/app/node_modules/.bin
CMD [ "nodemon", "/app/app.js" ]