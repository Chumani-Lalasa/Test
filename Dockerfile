# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start a basic static file server using Node.js
CMD ["npx", "http-server", "-p", "3000"]
