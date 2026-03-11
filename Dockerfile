# Use a lightweight Node.js image
FROM node:20-slim

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (serve)
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the requested port
EXPOSE 4452

# Start the application using serve on port 4452
CMD ["npx", "serve", "-s", "client", "-p", "4452"]
