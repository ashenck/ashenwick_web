# Use the official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js app for production
RUN npm run build

# Set environment variables (if needed)
# ENV YOUR_ENV_VARIABLE=value

# Specify the command to run your application
CMD ["npm", "start"]
