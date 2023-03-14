# Use an official Node.js runtime as the base image
FROM node:18.15-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./
COPY app.js ./

# Install Prettier (for our package's build functions)
# RUN apk add --no-cache ffmpeg opus pixman cairo pango giflib ca-certificates \
#     && apk add --no-cache --virtual .build-deps python g++ make gcc .build-deps curl git pixman-dev cairo-dev pangomm-dev libjpeg-turbo-dev giflib-dev \
#     && npm install \
#     && apk del .build-deps

RUN npm install prettier -g

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# # Build
# RUN npm run build

# Expose the port on which the API will listen
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
