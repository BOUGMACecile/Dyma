FROM node:latest
WORKDIR /app/
COPY ./package.json .
RUN npm install 

COPY . .
ENV PATH=$PATH:/app/node_modules/.bin
CMD [ "nodemon", "/app/src/app.js" ]
#CMD [“npm”, “start”]