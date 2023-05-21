# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /script

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the Node.js application
CMD [ "npm", "start" ]