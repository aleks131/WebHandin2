# Use an official Node (version 16) runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source
COPY . .

# Make port 2102 available to the world outside this container
EXPOSE 2102

# Command to run the app using CMD which keeps the container running
CMD [ "npm", "start" ]