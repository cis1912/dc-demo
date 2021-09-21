# Build ontop of an existing node image
FROM node:15-buster-slim

# Set the working directory to this directory (common place to 
# store application in the Linux file structure)
WORKDIR /app/

# Configure tini
RUN apt-get update && apt-get install -y tini \
    && rm -rf /var/lib/apt/lists/*

# Copy over package.json and packaage-lock.json (these files
# contain the necessary dependencies for our project)
COPY package*.json /app/

# Install dependencies for our project
RUN npm install

# Copy over all of the app source code
COPY . .

# Configure the start command
ENTRYPOINT ["tini", "--"]
CMD ["node", "index.js"]
