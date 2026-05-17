FROM node:lts-buster

# Set working directory
WORKDIR /app

# Copy all local files to container
COPY . .

# Install dependencies and latest pm2
RUN npm install && \
    npm cache clean -f && \
    npm install -g npm@latest && \
    npm install -g pm2@latest

# Expose the port your app listens on
EXPOSE 9090

# Start the app
CMD ["npm", "start"]
