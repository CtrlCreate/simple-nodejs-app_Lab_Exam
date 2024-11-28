# Step 1: Use the official Node.js image from Docker Hub
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Step 4: Install the app dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the port the app runs on (default for Express is 3000)
EXPOSE 3000

# Step 7: Command to run the app
CMD ["node", "index.js"]
