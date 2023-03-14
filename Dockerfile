# Specify the base image
FROM node:18.15-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Set the environment variables
ENV PORT=3000
# ENV NODE_ENV=production

# Expose the port that the container will listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
