#Dockerfile to create container image with app dependencies.

FROM node

# The app directory
WORKDIR /usr/src/app




COPY package.json ./

#Install dependencies
RUN npm install

#Copy all files from the app root to the container root
COPY . .

EXPOSE 8080
#Run this command
CMD [ "npm", "start" ]
