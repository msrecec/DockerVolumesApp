FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

#ENV PORT 80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

#VOLUME ["feedback:/app/feedback", "\"C:\Users\misla\Documents\Udemy\Docker\DockerVolumes:/app\"", "/app/node_modules" ]

#outsourcing data management to anonymous volume
#VOLUME [ "/app/temp" ]

CMD [ "npm", "start" ]