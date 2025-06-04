# Use official Node.js base image
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package.json first, then install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
