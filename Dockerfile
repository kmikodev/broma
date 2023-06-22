# Use an official Node runtime as the parent image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory /app in the container
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside the docker image
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the app when the container launches
CMD [ "node", "src", "index.js" ]