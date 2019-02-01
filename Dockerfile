# Use an official Node runtime as the parent image
FROM node:10

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./portcart/ /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./portcart/package*.json ./

#RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

# Make the container's port 80 available to the outside world
EXPOSE 9001

# Run app.js using node when the container launches
CMD ["npm", "start"]
