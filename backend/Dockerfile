FROM node:18-alpine

WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install all dependencies
RUN npm install

# Install nodemon globally
RUN npm install -g nodemon

# Copy the rest of the files
COPY . .

EXPOSE 5000

# Start the application
CMD ["nodemon", "--watch", "src", "--ext", "ts,json", "--exec", "ts-node", "src/index.ts"]