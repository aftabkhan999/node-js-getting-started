# ✅ Step 1: Use latest stable Node.js version
FROM node:16

# ✅ Step 2: Set the working directory
WORKDIR /usr/src/app

# ✅ Step 3: Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# ✅ Step 4: Install dependencies
RUN npm install

# ✅ Step 5: Copy the rest of the application files
COPY . .

# ✅ Step 6: Expose port 3000
EXPOSE 3000

# ✅ Step 7: Define the startup command
CMD ["node", "index.js"]
