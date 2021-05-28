# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build     

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/build /usr/share/nginx/html
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]



# Docker Image which is used as foundation to create
# a custom Docker Image with this Dockerfile
# FROM node:10

# A directory within the virtualized Docker environment
# Becomes more relevant when using Docker Compose later
# WORKDIR /usr/src/app

# Copies package.json and package-lock.json to Docker environment
# COPY package*.json ./

# Installs all node packages
# RUN npm install

# Copies everything over to Docker environment
# COPY . .

# Uses port which is used by the actual application
# EXPOSE 3000

# Finally runs the application
# CMD [ "npm", "start" ]