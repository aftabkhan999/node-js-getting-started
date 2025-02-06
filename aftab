# Step 1: Use Node.js official image as base
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Step 4: Install app dependencies (npm install)
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the port the app runs on (typically 3000)
EXPOSE 3000

# Step 7: Run the application using npm start
CMD ["npm", "start"]

