# Use an official Node runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR C:/Users/micha/Downloads/hoc/oauth-playlist

# Copy package.json and package-lock.json (or yarn.lock) into the working directory
COPY package.json package-lock.json* ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Your app binds to port 3000 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD ["node", "app.js"]