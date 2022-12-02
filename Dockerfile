FROM node:16.18.0
 
COPY . .

RUN npm install

EXPOSE 8000

CMD npm start


